<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liên Hệ</title>
<link href="${pageContext.request.contextPath}/views/client/css/styles.css" rel="stylesheet" type="text/css" />
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous" />
</head>
<body>
	<header>
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
				<button class="btn">
					<a href="${pageContext.request.contextPath}/login">Đăng Nhập</a>
				</button>
			</div>
		</nav>
		<div class="header__containerr" id="home"
			style="position: relative; isolation: isolate; overflow: hidden; padding: 1rem 1rem;">
			<h1>LIÊN HỆ</h1>
		</div>
	</header>
	<section class="contact section__container story__container">

		<div class="icon-container">

			<div class="icons">
				<i class="fas fa-phone"></i>
				<h3>Số chúng tôi</h3>
				<p>+123-456-7890</p>
				<p>+123-456-7890</p>
			</div>

			<div class="icons">
				<i class="fas fa-envelope"></i>
				<h3>Email chúng tôi</h3>
				<p>PhieuBatClub@gmail.com</p>
				<p>PhieuBatClub@gmail.com</p>
			</div>

			<div class="icons">
				<h3>Địa Chỉ</h3>
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929.420494742044!2d105.75565247554273!3d9.982081490122432!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a08906415c355f%3A0x416815a99ebd841e!2zVHLGsOG7nW5nIENhbyDEkeG6s25nIEZQVCBQb2x5dGVjaG5pYw!5e0!3m2!1svi!2s!4v1728877591735!5m2!1svi!2s"
					width="100%" height="200" style="border: 0;" allowfullscreen=""
					loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			</div>

		</div>

		<div class="row">

			<form action="">
				<h3>Hãy liên hệ với chúng tôi</h3>
				<div class="inputBox">
					<input type="text" placeholder="Nhập tên của bạn" class="box">
					<input type="email" placeholder="Nhập email của bạn" class="box">
				</div>
				<div class="inputBox">
					<input type="number" placeholder="Nhập số của bạn" class="box">
					<input type="text" placeholder="Nhập chủ đề của bạn" class="box">
				</div>
				<textarea placeholder="Tin nhắn của bạn" cols="30" rows="10"></textarea>
				<input type="submit" value="Gửi Tin nhắn" class="btn">
			</form>

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