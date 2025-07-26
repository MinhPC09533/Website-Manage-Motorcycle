package com.asm.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.beanutils.converters.DateTimeConverter;

import com.asm.until.Users;

/**
 * Servlet implementation class AuthServletMoto
 */
@WebServlet({"/login","/register","/forgot"})
public class AuthServletMoto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthServletMoto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // TODO Auto-generated method stub
	    String uriString = request.getRequestURI();
	    
	    // Điều hướng đến các trang khác nhau dựa trên URI
	    if (uriString.contains("register")) {
	        request.getRequestDispatcher("/views/client/register.jsp").forward(request, response);
	    } else if (uriString.contains("forgot")) {
	        request.getRequestDispatcher("/views/client/forgot.jsp").forward(request, response);
	    } else {
	        String tk = "";
	        Cookie[] cookies = request.getCookies();
	        
	        // Kiểm tra cookies có null hay không trước khi thao tác
	        if (cookies != null) {
	            for (Cookie cookie : cookies) {
	                if (cookie.getValue().startsWith("auth")) {
	                    tk = cookie.getValue();
	                    System.out.println("Cookie found: " + tk); // Thêm thông báo kiểm tra
	                }
	            }
	        } else {
	            // Nếu không có cookies, in ra thông báo
	            System.out.println("Không có cookies.");
	        }
	        
	        // Nếu có giá trị của token (tk), chia nó ra để lấy email và password
	        if (tk.length() > 1) {
	            String[] tks = tk.split("-"); 
	            request.setAttribute("email", tks[0].replace("auth", ""));
	            request.setAttribute("password", tks[1]);
	        }
	        
	        // Điều hướng đến trang login.jsp
	        request.getRequestDispatcher("/views/client/login.jsp").forward(request, response);
	    }
	}




	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String uriString = request.getRequestURI();
		if (uriString.contains("register")) {
			try {
				DateTimeConverter dtc = new DateConverter(new Date());
				dtc.setPattern("yyyy-MM-dd");
				ConvertUtils.register(dtc, Date.class);
				Users user = new Users();
				BeanUtils.populate(user, request.getParameterMap());
				user.setRole(false);
				String confirmPassword = request.getParameter("confirmPassword");
				if (user.getPassword().equals(confirmPassword)) {
					register(user);
					sendEmail(user);
					response.sendRedirect(request.getContextPath() + "/login");
				}else {
					request.setAttribute("message", "Mật khẩu không khớp");
					request.getRequestDispatcher("/views/client/register.jsp").forward(request, response);
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
		}else if (uriString.contains("forgot")) {
			
		}else {
	        // Xử lý đăng nhập
	        String email = request.getParameter("email");
	        String password = request.getParameter("password");
	        
	        // Kiểm tra nếu tham số "remember" không null, nếu null thì mặc định là "0"
	        String remember = request.getParameter("remember");
	        if (remember == null) {
	            remember = "0"; // Mặc định nếu không có "remember" (checkbox không được chọn)
	        }

	        System.out.println("email: " + email);
	        System.out.println("password: " + password);
	        System.out.println("remember: " + remember);
	        
	        // Tìm người dùng qua email
	        Users user = findByEmail(email);

	        // Kiểm tra người dùng có tồn tại và mật khẩu có đúng không
	        if (user == null || !user.getPassword().equals(password)) {
	            request.setAttribute("message", "Tài khoản hoặc mật khẩu không đúng");
	            request.getRequestDispatcher("/views/client/login.jsp").forward(request, response);
	        } else {
	            // Đăng nhập thành công
	            request.getSession().setAttribute("user", user);

	            // Xử lý chức năng "Ghi nhớ tôi"
	            if ("1".equals(remember)) {
	                Cookie cookie = new Cookie("email", "auth" + email + "-" + password);
	                cookie.setMaxAge(10 * 60); // 10 phút
	                cookie.setPath("/");
	                response.addCookie(cookie);
	            }

	            // Chuyển hướng đến trang home
	            response.sendRedirect(request.getContextPath() + "/home");
	        }
	    }
	}
	
	public Users findByEmail(String email) {
	    Users user = null;
	    String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	    String dburl = "jdbc:sqlserver://localhost:1433;database=MotorcycleShop1;encrypt=false";
	    String username = "sa";
	    String password = "123456";
	    try {
	        Class.forName(driver);
	        Connection connection = DriverManager.getConnection(dburl, username, password);
	        String sqlString = "SELECT * FROM users WHERE email=?";
	        PreparedStatement statement = connection.prepareStatement(sqlString);
	        statement.setString(1, email);
	        ResultSet rs = statement.executeQuery();
	        
	        // Nếu tìm thấy người dùng, gán thông tin vào đối tượng user
	        if (rs.next()) {
	            Integer id = rs.getInt("id");
	            String pass = rs.getString("password");
	            String fullname = rs.getString("fullname");
	            java.sql.Date birthDay = rs.getDate("birthday");
	            Boolean gender = rs.getBoolean("gender");
	            String phone = rs.getString("phone");
	            Boolean role = rs.getBoolean("role");

	            user = new Users();
	            user.setId(id);
	            user.setEmail(email);
	            user.setFullname(fullname);
	            user.setPassword(pass);  // Lưu mật khẩu từ DB (bạn có thể dùng kiểm tra băm ở đây)
	            user.setBirthday(birthDay);
	            user.setGender(gender);
	            user.setPhone(phone);
	            user.setRole(role);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return user;
	}

	
	public void sendEmail(Users user) {
		Properties props = new Properties();
		props.setProperty("mail.smtp.auth", "true");
		props.setProperty("mail.smtp.host", "smtp.gmail.com");
		props.setProperty("mail.smtp.port", "587");
		props.setProperty("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.starttls.required", "true");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		
		String emaiSend = "nguyenquangminh3316@gmail.com";
		String passWord = "jqyd uamy xrct lgkp";
		Session session = Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication(emaiSend, passWord);
			}
		});
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(emaiSend));
			message.setRecipients(Message.RecipientType.TO, user.getEmail());
			message.setSubject("Thông báo đăng ký thành công", "utf-8");
			message.setText("Chào mừng "+user.getFullname()+  "đã đăng ký thành công!!!", "utf-8");
			Transport.send(message);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	public void register(Users user) {
		String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String dburl = "jdbc:sqlserver://localhost:1433;database=MotorcycleShop1;encrypt=false";
		String username = "sa";
		String password = "123456";
		try {
			Class.forName(driver);
			Connection connection = DriverManager.getConnection(dburl, username, password);
			String sqlString = "insert into users(email, password,fullname, birthday, gender, phone, role) values(?,?,?,?,?,?,?)";
			PreparedStatement statement = connection.prepareStatement(sqlString);
			statement.setString(1, user.getEmail());
			statement.setString(2, user.getPassword());
			statement.setString(3, user.getFullname());
			System.out.println("user.getBirthday()" + user.getBirthday());
			statement.setDate(4, user.getBirthday());;
			statement.setBoolean(5, user.getGender());
			statement.setString(6, user.getPhone());
			statement.setBoolean(7, user.getRole());
			statement.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
