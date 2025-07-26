<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chủ</title>
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
		<h2 class="section__header">SẢN PHẨM HOT</h2>
		<div class="range__grid">
			<div class="range__card">


				<img src="${pageContext.request.contextPath}/views/client/assets/suzuki-x7l.jpg" alt="range" />
				<div class="Car">
					<h4>Suzuki XL7 Hybrid chính thức ra mắt tại Việt Nam</h4>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/suzuki-jimmi.jpg" alt="range" />
				<div class="Car">
					<h4>Việt Nam Suzuki chính thức giới thiệu Suzuki Jimny</h4>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/Black_Bronze_Gold.png" alt="range" />
				<div class="Car">
					<h4>Satria F150 phiên bản mới với diện mạo độc đáo</h4>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/Red_Black.png" alt="range" />
				<div class="Car">
					<h4>Việt Nam Suzuki giới thiệu Raider R150 phiên bản mới</h4>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/suzuki-x7l.jpg" alt="range" />
				<div class="Car">
					<h4>Suzuki XL7 Hybrid chính thức ra mắt tại Việt Nam</h4>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/suzuki-jimmi.jpg" alt="range" />
				<div class="Car">
					<h4>Việt Nam Suzuki chính thức giới thiệu Suzuki Jimny</h4>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/Black_Bronze_Gold.png" alt="range" />
				<div class="Car">
					<h4>Satria F150 phiên bản mới với diện mạo độc đáo</h4>
					<button class="btnn">Xem chi tiết</button>
				</div>
			</div>
			<div class="range__card">
				<img src="${pageContext.request.contextPath}/views/client/assets/Red_Black.png" alt="range" />
				<div class="Car">
					<h4>Việt Nam Suzuki giới thiệu Raider R150 phiên bản mới</h4>
					<button class="btnn">Xem chi tiết</button>
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

	<section class="section__container story__container">
		<h2 class="section__header">TIN TỨC</h2>
		<div class="story__grid">
			<div class="story__card">
				<div class="story__date">
					<span>12</span>
					<div>
						<p>Tháng một</p>
						<p>2024</p>
					</div>
				</div>
				<h4>Những cuộc phiêu lưu trên con đường rộng mở</h4>
				<p>Hãy cùng chúng tôi khám phá những câu chuyện thú vị của những
					du khách đã bắt...</p>
				<img src="${pageContext.request.contextPath}/views/client/assets/gia-air-blade-125-doi-moi.jpg" alt="story" />
			</div>
			<div class="story__card">
				<div class="story__date">
					<span>04</span>
					<div>
						<p>Tháng năm</p>
						<p>2024</p>
					</div>
				</div>
				<h4>Những chiếc xe phù hợp với phong cách sống của bạn</h4>
				<p>Đọc về cách các loại xe đa dụng của chúng tôi hòa nhập dễ
					dàng vào cuộc sống của...</p>
				<img src="${pageContext.request.contextPath}/views/client/assets/AnhNenQuanLyNhanVien.jpg" alt="story" />
			</div>
			<div class="story__card">
				<div class="story__date">
					<span>18</span>
					<div>
						<p>Tháng 6</p>
						<p>2024</p>
					</div>
				</div>
				<h4>Sang trọng và thoải mái: Trải nghiệm</h4>
				<p>Trong loạt bài này, chúng tôi sẽ nhấn mạnh những nét sang
					trọng, sự thoải mái vô song</p>
				<img
					src="${pageContext.request.contextPath}/views/client/assets/Ducati-Heritage-scrambler-icon-overview-banner-full-1330x600-1 (1).jpg"
					alt="story" />
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