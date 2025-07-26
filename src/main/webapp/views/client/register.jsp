<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<title>Đăng Ký</title>
<link
	href="${pageContext.request.contextPath}/views/client/css/styles.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/boxicons@2.1.4/css/boxicons.min.css"
	rel="stylesheet" />

<link
	href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css"
	rel="stylesheet" />
<style>
.input-field1::placeholder {
	color: #ffffff;
}
</style>
</head>
<body class="body">
	<header class="header" style="background-image: none;">
		<nav>
			<div class="nav__header">
				<div class="nav__logo">
					<a href="#"><img
						src="${pageContext.request.contextPath}/views/client/assets/logo.png"
						alt=""></a>
				</div>
				<div class="nav__menu__btn" id="menu-btn">
					<i class="ri-menu-line"></i>
				</div>
			</div>
			<ul class="nav__links" id="nav-links">
				<li><a href="${pageContext.request.contextPath}/home">Trang
						Chủ</a></li>
				<li><a href="${pageContext.request.contextPath}/product">Sản
						Phẩm</a></li>
				<li><a href="${pageContext.request.contextPath}/accessory">Phụ
						Kiện</a></li>
				<li><a href="${pageContext.request.contextPath}/contact">Liên
						Hệ</a></li>
				<li><a href="${pageContext.request.contextPath}/about">Giới
						Thiệu</a></li>
			</ul>
			<div class="nav__btn">
				<a href="${pageContext.request.contextPath}/admin">
					<button class="btn">ADMIN</button>
				</a>
			</div>
		</nav>
	</header>
	<section>
	
	
	<div class="container">
		<div class="card">
			<div class="card-header">
				<h1 class="text-center">Đăng ký</h1>
			</div>
			<div class="card-body">
				
				<label class="text-danger"> ${message}</label>
				<form action="/MinhnqPC09533_Assignment_1/register" method="post">
					<div class="mb-3">
					  <label for="name" class="form-label">Email</label>
					  <input type="email" class="form-control" id="email" name="email" placeholder="email">
					</div>
					<div class="mb-3">
					  <label for="name" class="form-label">Mật khẩu</label>
					  <input type="password" class="form-control" id="password" name="password" placeholder="Mật khẩu">
					</div>
					<div class="mb-3">
					  <label for="name" class="form-label">Xác nhận mật khẩu</label>
					  <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Xác nhận mật khẩu">
					</div>
					<div class="mb-3">
					  <label for="name" class="form-label">Họ và tên</label>
					  <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Họ và tên">
					</div>
					<div class="mb-3">
					  <label for="name" class="form-label">Ngày sinh</label>
					  <input type="date" class="form-control" id="birthday" name="birthday" placeholder="Ngày sinh">
					</div>
					<div class="mb-3">
					  <label for="name" class="form-label">Giới tính</label>
					  <input class="form-check-input" type="radio" id="gender" name="gender" value="1"> Nam
					  <input class="form-check-input" type="radio" id="gender" name="gender" value="0"> Nữ
					</div>
					<div class="mb-3">
					  <label for="name" class="form-label">Điện thoại</label>
					  <input type="text" class="form-control" id="phone" name="phone" placeholder="Điện thoại">
					</div>
					<button class="btn btn-primary">Đăng ký</button>
				</form>
			</div>	
		</div>
	</div>
	
		<%-- <div class="wrapper">
			<div class="form-box">
				<div class="register-container" id="register">
					<div class="top">
						<span>Bạn đã có tài khoản? <a
							href="${pageContext.request.contextPath}/login">Đăng Nhập</a></span>
						<h1 class="h1">Đăng Ký</h1>
					</div>
					<div class="two-forms">
						<div class="input-box">
							<input type="text" class="input-field1" placeholder="Họ">
							<i class="bx bx-user"></i>
						</div>
						<div class="input-box">
							<input type="text" class="input-field1" placeholder="Tên">
							<i class="bx bx-user"></i>
						</div>
					</div>
					<div class="input-box">
						<input type="text" class="input-field1" placeholder="Email">
						<i class="bx bx-envelope"></i>
					</div>
					<div class="input-box">
						<input type="password" class="input-field1" placeholder="Mật khẩu">
						<i class="bx bx-lock-alt"></i>
					</div>
					<div class="input-box">
						<input type="submit" class="submit" value="Đăng Ký">
					</div>
					<div class="two-col">
						<div class="one">
							<input type="checkbox" id="register-check"> <label
								for="register-check"> Nhớ Tôi</label>
						</div>
						<div class="two">
							<label><a href="#">Điều khoản & điều kiện</a></label>
						</div>
					</div>
				</div>
			</div>
		</div> --%>
	</section>

	<section class="news" id="contact">
		<div class="section__container news__container">
			<h2 class="section__header">Cập nhật tin tức mới nhất.</h2>
			<form action="/">
				<input type="text" placeholder="Email của bạn..." />
				<button class="btn">
					<i class="ri-send-plane-fill"></i>
				</button>
			</form>
		</div>
	</section>

	<footer>
		<div class="section__container footer__container">
			<div class="footer__col">
				<h4>Tài nguyên</h4>
				<ul class="footer__links">
					<li><a href="#">Hướng dẫn mua hàng</a></li>
					<li><a href="#">Ghi chú phát hành</a></li>
					<li><a href="#">Trợ giúp cộng đồng</a></li>
				</ul>
			</div>
			<div class="footer__col">
				<h4>Công ty</h4>
				<ul class="footer__links">
					<li><a href="#">Giới thiệu về chúng tôi</a></li>
					<li><a href="#">Sự nghiệp</a></li>
					<li><a href="#">Ủng hộ</a></li>
				</ul>
			</div>
			<div class="footer__col">
				<h4>Sản phẩm</h4>
				<ul class="footer__links">
					<li><a href="#">Xe máy</a></li>
					<li><a href="#">Xe hơi</a></li>
					<li><a href="#">Xe cao cấp</a></li>
					<li><a href="#">Xe giảm giá</a></li>
				</ul>
			</div>
			<div class="footer__col">
				<h4>Theo dõi</h4>
				<ul class="footer__socials">
					<li><a href="#"><i class="ri-facebook-fill"></i></a></li>
					<li><a href="#"><i class="ri-twitter-fill"></i></a></li>
					<li><a href="#"><i class="ri-linkedin-fill"></i></a></li>
				</ul>
			</div>
		</div>
		<div class="footer__bar">Copyright © 2024</div>
	</footer>



</body>
</html>