<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/boxicons@2.1.4/css/boxicons.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/views/client/css/styles.css" rel="stylesheet" type="text/css" />
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css"
	rel="stylesheet" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<title>Login</title>
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
					<a href="#"><img src="${pageContext.request.contextPath}/views/client/assets/logo.png" alt=""></a>
				</div>
				<div class="nav__menu__btn" id="menu-btn">
					<i class="ri-menu-line"></i>
				</div>
			</div>
			<ul class="nav__links" id="nav-links">
				<li><a href="${pageContext.request.contextPath}/home">Trang Chủ</a></li>
				<li><a href="${pageContext.request.contextPath}/product">Sản Phẩm</a></li>
				<li><a href="${pageContext.request.contextPath}/accessory">Phụ Kiện</a></li>
				<li><a href="${pageContext.request.contextPath}/contact">Liên Hệ</a></li>
				<li><a href="${pageContext.request.contextPath}/about">Giới Thiệu</a></li>
			</ul>
			<div class="nav__btn">
				<a href="${pageContext.request.contextPath}/dashboard">
  <button class="btn">ADMIN</button>
</a>
			</div>
		</nav>
	</header>
	<section>
			<div class="container">
	
		<div class="card">
			<div class="card-header">
				<h1 class="text-center">Đăng nhập</h1>
			</div>
			<div class="card-body">
				
				<label class="text-danger"> ${message}</label>
				<form action="/MinhnqPC09533_Assignment_1/login" method="post">
					<div class="mb-3">
					  <label for="name" class="form-label">Email</label>
					  <input type="email" class="form-control" id="email" name="email" placeholder="email" value="${email}">
					</div>
					<div class="mb-3">
					  <label for="name" class="form-label">Mật khẩu</label>
					  <input type="password" class="form-control" id="password" name="password" placeholder="Mật khẩu" value="${password}">
					</div>
					<div class="mb-3">
					  <input class="form-check-input" type="checkbox" id="remember" name="remember" value="1"> Ghi nhớ tài khoản
					</div>
					<button class="btn btn-primary">Đăng nhập</button>
				</form>
			</div>	
		</div>
	</div>
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