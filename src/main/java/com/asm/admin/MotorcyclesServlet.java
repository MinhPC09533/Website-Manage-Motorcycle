package com.asm.admin;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import com.asm.DAO.MotorcyclesDAO;
import com.asm.DAO.MotorcyclesDAOImpl;
import com.asm.model.Motorcycles;

/**
 * Servlet implementation class MotorcyclesServlet
 */
@MultipartConfig
@WebServlet({
    "/views/motorcycle/index",
    "/views/motorcycle/edit/*",
    "/views/motorcycle/create",
    "/views/motorcycle/update",
    "/views/motorcycle/delete",
    "/views/motorcycle/reset"
})
public class MotorcyclesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  private MotorcyclesDAO dao;

	    public MotorcyclesServlet() {
	        super();
	        dao = new MotorcyclesDAOImpl();
	        
	    }
	    @Override
		protected void service(HttpServletRequest req, HttpServletResponse resp)
	            throws ServletException, IOException {
	        String path = req.getServletPath();
	        Motorcycles form = new Motorcycles();

	        try {
	            BeanUtils.populate(form, req.getParameterMap());
	        } catch (IllegalAccessException | InvocationTargetException e) {
	            e.printStackTrace();
	        }

	        if (path.contains("edit")) {
	            String id = req.getPathInfo();
	            if (id != null && id.length() > 1) {
	                try {
	                    int motoId = Integer.parseInt(id.substring(1));
	                    form = dao.findById(motoId);
	                } catch (NumberFormatException e) {
	                    req.setAttribute("message", "Lỗi: ID không hợp lệ!");
	                }
	            }
	        } else if (path.contains("create")) {
	            dao.create(form);
	            req.setAttribute("message", "Thêm mới thành công!");
	        } else if (path.contains("update")) {
	            dao.update(form);
	            req.setAttribute("message", "Cập nhật thành công!");
	        } else if (path.contains("delete")) {
	            dao.deleteById(form.getMotorcycle_id());
	            req.setAttribute("message", "Xóa thành công!");
	        } else if (path.contains("reset")) {
	            form = new Motorcycles();
	        }

	        // ✅ Cập nhật lại danh sách sau thao tác
	        req.setAttribute("item1", form);
	        req.setAttribute("list1", dao.findAll());
	        
	    	req.setAttribute("activeTab", "motorcycle"); // Chuyển tab sang Brand
	        // ✅ Chỉ forward, không redirect để tránh reload trang
	        req.getRequestDispatcher("/views/admin/index.jsp").forward(req, resp);
	    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath();
		
		request.setAttribute("item1", new Motorcycles());
    	if (path.contains("edit")) {
    	    String idStr = request.getPathInfo().substring(1);
    	    try {
    	        int id = Integer.parseInt(idStr); // ✅ Chuyển đổi id về int
    	        Motorcycles dept = dao.findById(id);
    	        request.setAttribute("item1", dept);
    	    } catch (NumberFormatException e) {
    	        System.out.println("ID không hợp lệ: " + idStr);
    	        request.setAttribute("item1", new Motorcycles());
    	    }
    	} else {
    	    request.setAttribute("item1", new Motorcycles());
    	}

    	List<Motorcycles> list1 = dao.findAll();
    	System.out.println("Danh sách xe máy: " + list1);
    	request.setAttribute("list", list1);
    	
    	request.setAttribute("activeTab", "motorcycle"); 
    	

    	request.getRequestDispatcher("/views/admin/index.jsp").forward(request, response);

    
    }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
	        throws ServletException, IOException {
	    String path = request.getServletPath();
	    Motorcycles form = new Motorcycles();
	    MotorcyclesDAOImpl dao = new MotorcyclesDAOImpl(); // Đảm bảo có DAO

	    try {
	        BeanUtils.populate(form, request.getParameterMap());
	    } catch (IllegalAccessException | InvocationTargetException e) {
	        request.setAttribute("message", "Có lỗi xảy ra khi lấy thông tin xe máy!");
	        e.printStackTrace();
	    }

	    // 🖼️ Xử lý upload ảnh
	    Part img = request.getPart("image"); // Lấy file ảnh
	    String fileName = (img != null && img.getSize() > 0) ? img.getSubmittedFileName() : null;
	    
	    if (fileName != null) {
	        String uploadPath = request.getServletContext().getRealPath("/assets"); // Thư mục lưu ảnh
	        File uploadDir = new File(uploadPath);
	        if (!uploadDir.exists()) {
				uploadDir.mkdirs();
			} // Tạo thư mục nếu chưa có
	        
	        String filePath = uploadPath + File.separator + fileName;
	        img.write(filePath); // Lưu file vào thư mục
	        
	        form.setImage_url(fileName); // Lưu tên file vào database
	    } else {
	        form.setImage_url("default.jpg"); // Ảnh mặc định nếu không upload ảnh
	    }

	    // 🔽 Xử lý theo loại hành động
	    if (path.contains("create")) {
	        dao.create(form); // Thêm mới vào database
	        request.setAttribute("message", "Thêm mới thành công!");
	    } else if (path.contains("update")) {
	        dao.update(form); // Cập nhật database
	        request.setAttribute("message", "Cập nhật thành công!");
	    } else if (path.contains("delete")) {
	        try {
	            int id = Integer.parseInt(request.getParameter("id"));
	            dao.deleteById(id);
	            request.setAttribute("message", "Xóa thành công!");
	        } catch (NumberFormatException e) {
	            request.setAttribute("message", "Lỗi: ID không hợp lệ!");
	        }
	    } else if (path.contains("reset")) {
	        request.setAttribute("item1", new Motorcycles()); // Reset form
	    }

	    // 🔹 Lấy danh sách xe máy để hiển thị
	    List<Motorcycles> list1 = dao.findAll();
	    request.setAttribute("list1", list1); // Đảm bảo JSP lấy `list1`
	    request.setAttribute("activeTab", "motorcycle");

	    // 🔄 Chuyển về trang danh sách
	    request.getRequestDispatcher("/views/admin/index.jsp").forward(request, response);
	}}

