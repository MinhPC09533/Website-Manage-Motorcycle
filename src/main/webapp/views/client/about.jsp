
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giới Thiệu</title>
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
		<div class="header__containerr" id="home" style="padding: 1rem 1rem;">
			<h1>Giới Thiệu</h1>
		</div>
	</header>

	<section class="section__container range__container">
		<h2 class="section__header">VỀ CHÚNG TÔI</h2>

		<div class="row">
			<div class="col-7" style="text-align: justify;">
				<p>
					Chào mừng đến với <strong>Phiêu Bạt Club</strong> - nơi bạn tìm
					thấy những mẫu xe mới nhất và chất lượng tại Việt Nam!
				</p>

				<ul>
					<li><strong>Sứ mệnh:</strong> Mang đến trải nghiệm mua sắm xe
						dễ dàng, đáng tin cậy, với thông tin sản phẩm minh bạch.</li>
					<li><strong>Đội ngũ chuyên nghiệp:</strong> Các chuyên gia
						giàu kinh nghiệm luôn sẵn sàng hỗ trợ, tư vấn lựa chọn xe phù hợp.
					</li>
					<li><strong>Dịch vụ tận tâm:</strong> Chúng tôi xây dựng mối
						quan hệ bền chặt, lắng nghe và giải đáp mọi thắc mắc của bạn.</li>
					<li><strong>Sản phẩm đa dạng:</strong> Cung cấp các dòng xe từ
						sedan, SUV đến xe điện, đảm bảo chất lượng tốt nhất.</li>
					<li><strong>Cam kết chất lượng:</strong> Ưu tiên sản phẩm đạt
						tiêu chuẩn cao, cùng với dịch vụ bảo trì, bảo hành tốt nhất.</li>
				</ul>

				<p>
					Ghé thăm <strong>Phiêu Bạt Club</strong> để khám phá những mẫu xe
					ưng ý!
				</p>

			</div>
			<div class="col-5">
				<img src="${pageContext.request.contextPath}/views/client/assets/WygAqXwJo74BFJ3EZ6Bg.png" alt="">
			</div>
		</div>
	</section>

	<section class="section__container range__container">
		<h2 class="section__header">Chất Lượng</h2>

		<div class="row">
			<div class="col-5">
				<img src="${pageContext.request.contextPath}/views/client/assets/2pSqu65qdei9HLkHfOtJ.png" alt="">
			</div>
			<div class="col-7" style="text-align: justify;">
				<p>
					<strong>Chất Lượng Dịch Vụ Bán Xe Tại Phiêu Bạt Club</strong><br>
					Tại Phiêu Bạt Club, chất lượng dịch vụ bán xe của chúng tôi được
					xây dựng dựa trên những giá trị cốt lõi: <strong>chuyên
						nghiệp</strong>, <strong>minh bạch</strong>, và <strong>tận tâm</strong>.
				</p>
				<ul>
					<li><strong>Đội Ngũ Tư Vấn:</strong> Nhân viên tư vấn giàu
						kinh nghiệm luôn sẵn sàng lắng nghe và hỗ trợ bạn tìm mẫu xe phù
						hợp, đảm bảo bạn nhận được thông tin đầy đủ và chính xác.</li>
					<li><strong>Thông Tin Minh Bạch:</strong> Chúng tôi cam kết
						cung cấp thông tin rõ ràng về giá cả, thông số kỹ thuật và các
						điều khoản bảo hành, giúp bạn đưa ra quyết định mua sắm dễ dàng
						hơn.</li>
					<li><strong>Dịch Vụ Hậu Mãi:</strong> Chúng tôi không chỉ bán
						xe mà còn cung cấp dịch vụ hậu mãi chu đáo, bao gồm bảo trì và sửa
						chữa, đảm bảo xe của bạn luôn trong tình trạng tốt nhất.</li>
					<li><strong>Cam Kết Chất Lượng:</strong> Mỗi chiếc xe đều trải
						qua kiểm tra chất lượng nghiêm ngặt, đảm bảo an toàn và hiệu suất
						tối ưu. Chất lượng dịch vụ của chúng tôi được kiểm chứng qua sự
						hài lòng của khách hàng.</li>
				</ul>
				<p>
					Hãy đến với <strong>Phiêu Bạt Club</strong> để trải nghiệm dịch vụ
					bán xe tận tâm và chuyên nghiệp!
				</p>

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