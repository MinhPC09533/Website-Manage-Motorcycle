package com.asm.admin;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.asm.DAO.BrandDAO;
import com.asm.DAO.BrandDAOImpl;
import com.asm.model.Brand;

@WebServlet({
    "/views/brand/index",
    "/views/brand/edit/*",
    "/views/brand/create",
    "/views/brand/update",
    "/views/brand/delete",
    "/views/brand/reset"
})
public class BrandServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private BrandDAO dao;

    public BrandServlet() {
        super();
        dao = new BrandDAOImpl();
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String path = req.getServletPath();
        Brand form = new Brand();

        try {
            BeanUtils.populate(form, req.getParameterMap());
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }

        if (path.contains("edit")) {
            String id = req.getPathInfo();
            if (id != null && id.length() > 1) {
                try {
                    int brandId = Integer.parseInt(id.substring(1));
                    form = dao.findById(brandId);
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
            dao.deleteById(form.getBrand_id());
            req.setAttribute("message", "Xóa thành công!");
        } else if (path.contains("reset")) {
            form = new Brand();
        }

        // Cập nhật lại danh sách sau thao tác
        req.setAttribute("item", form);
        req.setAttribute("list", dao.findAll()); // Lấy lại danh sách sau thao tác
        req.setAttribute("activeTab", "brand"); // Chuyển tab sang Brand
        req.getRequestDispatcher("/views/admin/index.jsp").forward(req, resp); // Forward tới JSP
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getServletPath();

        if (path.contains("edit")) {
            String idStr = request.getPathInfo().substring(1);
            try {
                int id = Integer.parseInt(idStr); // Chuyển đổi id về int
                Brand brand = dao.findById(id);
                request.setAttribute("item", brand);
            } catch (NumberFormatException e) {
                System.out.println("ID không hợp lệ: " + idStr);
                request.setAttribute("item", new Brand());
            }
        } else {
            request.setAttribute("item", new Brand()); // Nếu không có item, tạo brand mới
        }

        List<Brand> list = dao.findAll(); // Lấy lại danh sách brand
        request.setAttribute("list", list);
        request.setAttribute("activeTab", "brand");

        request.getRequestDispatcher("/views/admin/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getServletPath();
        Brand form = new Brand();

        try {
            BeanUtils.populate(form, request.getParameterMap());
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        }

        if (path.contains("create")) {
            dao.create(form);
            request.setAttribute("message", "Thêm mới thành công!");
        } else if (path.contains("update")) {
            dao.update(form);
            request.setAttribute("message", "Cập nhật thành công!");
        } else if (path.contains("delete")) {
            String idStr = request.getParameter("id"); // Lấy id từ request
            try {
                int id = Integer.parseInt(idStr); // Chuyển đổi sang int
                dao.deleteById(id);
                request.setAttribute("message", "Xóa thành công!");
            } catch (NumberFormatException e) {
                request.setAttribute("message", "Lỗi: ID không hợp lệ!");
            }
        } else if (path.contains("reset")) {
            request.setAttribute("item", new Brand()); // Reset form
        }

        // Cập nhật lại danh sách sau thao tác
        List<Brand> list = dao.findAll();
        request.setAttribute("list", list); // Lấy danh sách cập nhật
        request.setAttribute("activeTab", "brand");

        request.getRequestDispatcher("/views/admin/index.jsp").forward(request, response); // Forward tới JSP
    }
}
