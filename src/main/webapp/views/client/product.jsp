
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sản Phẩm</title>
<link href="${pageContext.request.contextPath}/views/client/css/styles.css" rel="stylesheet" type="text/css" />
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@4.3.0/fonts/remixicon.css"
	rel="stylesheet" />
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
		<div class="header__container" id="home">
			<h1>Khám Phá Hành Trình Mới</h1>
			<img src="${pageContext.request.contextPath}/views/client/assets/header.png" alt="header" />
		</div>
		<a href="#about" class="scroll__down"> <i
			class="ri-arrow-down-line"></i>
		</a>
	</header>

	<section class="section__container range__container" id="about"
		style="max-width: 100%;">
		<h2 class="section__header">SẢN PHẨM MỚI NHẤT</h2>
		<div class="range__grid">
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/black_gold.png" alt="range" />
				<div class="Car">
					<h4>Suzuki XL7 Hybrid chính thức ra mắt tại Việt Nam</h4>
					<p class="price">45.000.000 VNĐ</p>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/Red_Black.png" alt="range" />
				<div class="Car">
					<h4>Suzuki XL7 Hybrid chính thức ra mắt tại Việt Nam</h4>
					<p class="price">45.000.000 VNĐ</p>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/Black_Red.png" alt="range" />
				<div class="Car">
					<h4>Suzuki XL7 Hybrid chính thức ra mắt tại Việt Nam</h4>
					<p class="price">45.000.000 VNĐ</p>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/White_Red_Black.png" alt="range" />
				<div class="Car">
					<h4>Suzuki XL7 Hybrid chính thức ra mắt tại Việt Nam</h4>
					<p class="price">45.000.000 VNĐ</p>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
		</div>
		<br>
		<div class="range__grid">
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/Orange_black.png" alt="range" />
				<div class="Car">
					<h4>Suzuki XL7 Hybrid chính thức ra mắt tại Việt Nam</h4>
					<p class="price">45.000.000 VNĐ</p>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/Blue_Silver_Black.png" alt="range" />
				<div class="Car">
					<h4>Suzuki XL7 Hybrid chính thức ra mắt tại Việt Nam</h4>
					<p class="price">45.000.000 VNĐ</p>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/Black_white.png" alt="range" />
				<div class="Car">
					<h4>Suzuki XL7 Hybrid chính thức ra mắt tại Việt Nam</h4>
					<p class="price">45.000.000 VNĐ</p>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/black.png" alt="range" />
				<div class="Car">
					<h4>Suzuki XL7 Hybrid chính thức ra mắt tại Việt Nam</h4>
					<p class="price">45.000.000 VNĐ</p>
					<button classdownload__container="btnn">Xem chi tiết</button>
				</div>
			</div>
		</div>
		<br>
		<div class="range__grid">
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/1-04_1723898499723.jpg" alt="range" />
				<div class="Car">
					<h4>Suzuki XL7 Hybrid chính thức ra mắt tại Việt Nam</h4>
					<p class="price">45.000.000 VNĐ</p>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/suzuki-jimmi.jpg" alt="range" />
				<div class="Car">
					<h4>Suzuki XL7 Hybrid chính thức ra mắt tại Việt Nam</h4>
					<p class="price">45.000.000 VNĐ</p>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/suzuki-x7l.jpg" alt="range" />
				<div class="Car">
					<h4>Suzuki XL7 Hybrid chính thức ra mắt tại Việt Nam</h4>
					<p class="price">45.000.000 VNĐ</p>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/1-01_1723548676955.jpg" alt="range" />
				<div class="Car">
					<h4>Suzuki XL7 Hybrid chính thức ra mắt tại Việt Nam</h4>
					<p class="price">45.000.000 VNĐ</p>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
		</div>
		<br>
		<div class="list-page">
			<div class="item">
				<a href="">1</a>
			</div>
			<div class="item">
				<a href="">2</a>
			</div>
			<div class="item">
				<a href="">3</a>
			</div>
			<div class="item">
				<a href="">4</a>
			</div>
		</div>
	</section>

	<section class="section__container location__container" id="rent"
		style="max-width: 100%;">
		<div class="location__image">
			<img src="${pageContext.request.contextPath}/views/client/assets/138f77f6-xe-may-danh-cho-hoc-sinh-cap-3-1.jpg"
				alt="location" />
		</div>
		<div class="location__content">
			<h2 class="section__header">
				GIẢM GIÁ LÊN ĐẾN <span style="color: red;">25%</span> CHO SINH VIÊN
				NHẬP HỌC
			</h2>
			<div class="location__btn">
				<button class="btn">Mua Ngay</button>
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