<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phụ Kiện</title>
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
                <button  class="btn"><a href="${pageContext.request.contextPath}/login">Đăng Nhập</a></button>
            </div>
        </nav>
        <div class="header__container" id="home">
            <h1>Khám Phá Hành Trình Mới</h1>
            <img src="${pageContext.request.contextPath}/views/client/assets/header.png" alt="header" />
        </div>
        <a href="#about" class="scroll__down">
            <i class="ri-arrow-down-line"></i>
        </a>
    </header>

    <section class="section__container range__container" id="about" style="max-width: 100%;">
        <h2 class="section__header">PHỤ KIỆN</h2>
        <div class="range__grid">
            <div class="range__card">
                <img src="${pageContext.request.contextPath}/views/client/assets/bo-canbus-ican.jpg" alt="range" />
                <div class="Car">
                    <h4>Bộ Canbus Ican</h4>
                    <p class="price">1.000.000 VNĐ</p>
                    <button class="btnn">Xem chi tiết</button>
                </div>
            </div>
            <div class="range__card">
                <img src="${pageContext.request.contextPath}/views/client/assets/cam-bien-do-xe-icar-ellisen-e6xf-cho-xe-mitsubishi-xforce-15.jpg" alt="range" />
                <div class="Car">
                    <h4>Bộ Cảm Biến Đổ Xe</h4>
                    <p class="price">4.000.000 VNĐ</p>
                    <button class="btnn">Xem chi tiết</button>
                </div>
            </div>
            <div class="range__card">
                <img src="${pageContext.request.contextPath}/views/client/assets/camera-hanh-trinh-ellicam-a620-1.jpg" alt="range" />
                <div class="Car">
                    <h4>Camera Hành Trình EliCam</h4>
                    <p class="price">5.000.000 VNĐ</p>
                    <button class="btnn">Xem chi tiết</button>
                </div>
            </div>
            <div class="range__card">
                <img src="${pageContext.request.contextPath}/views/client/assets/icar.vn-camera-hanh-trinh-nextbase-a263-wifi-camera-hanh-trinh-nextbase-a263-wifi.jpg" alt="range" />
                <div class="Car">
                    <h4>Camera hành trình Nextbase </h4>
                    <p class="price">6.000.000 VNĐ</p>
                    <button class="btnn">Xem chi tiết</button>
                </div>
            </div>
        </div>
        <br>
        <div class="range__grid">
            <div class="range__card">
                <img src="${pageContext.request.contextPath}/views/client/assets/bomdien.jpg" alt="range" />
                <div class="Car">
                    <h4>Bơm điện ô tô ICAR IPress P50</h4>
                    <p class="price">1.200.000 VNĐ</p>
                    <button class="btnn">Xem chi tiết</button>
                </div>
            </div>
            <div class="range__card">
                <img src="${pageContext.request.contextPath}/views/client/assets/icar.vn-cam-bien-ap-suat-lop-icar-ellisafe-i3c-theo-xe-toyota-cross-cam-bien-ap-suat-lop-icar-ellisafe-i3c-theo-xe-toyota-cross-4.jpg" alt="range" />
                <div class="Car">
                    <h4>Cảm biến áp suất lốp ICAR Ellisafe IP24L</h4>
                    <p class="price">10.000.000 VNĐ</p>
                    <button class="btnn">Xem chi tiết</button>
                </div>
            </div>
            <div class="range__card">
                <img src="${pageContext.request.contextPath}/views/client/assets/man-hinh-android-lien-cam-360-elliview-s5-basic-20.jpg" alt="range" />
                <div class="Car">
                    <h4>Màn hình Android ICAR</h4>
                    <p class="price">18.000.000 VNĐ</p>
                    <button class="btnn">Xem chi tiết</button>
                </div>
            </div>
            <div class="range__card">
                <img src="${pageContext.request.contextPath}/views/client/assets/icar.vn-man-hinh-android-elliview-u4-basic-man-hinh-android-elliview-u4-basic-1.png" alt="range" />
                <div class="Car">
                    <h4>Màn hình Android ICAR Mini</h4>
                    <p class="price">7.000.000 VNĐ</p>
                    <button class="btnn">Xem chi tiết</button>
                </div>
            </div>
        </div>
        <br>
        <div class="range__grid">
            <div class="range__card">
                <img src="${pageContext.request.contextPath}/views/client/assets/android-auto-box-icar-elliview-de-7.jpg" alt="range" />
                <div class="Car">
                    <h4>Android Box ICAR Elliview DE</h4>
                    <p class="price">20.000.000 VNĐ</p>
                    <button class="btnn">Xem chi tiết</button>
                </div>
            </div>
            <div class="range__card">
                <img src="${pageContext.request.contextPath}/views/client/assets/icar.vn-cop-dien-danh-cho-o-to-elligate-cop-dien-danh-cho-o-to-elligate-3.jpg" alt="range" />
                <div class="Car">
                    <h4>Cốp điện dành cho ô tô Elligate</h4>
                    <p class="price">7.000.000 VNĐ</p>
                    <button class="btnn">Xem chi tiết</button>
                </div>
            </div>
            <div class="range__card">
                <img src="${pageContext.request.contextPath}/views/client/assets/camera-360-icar-elliview-v5-s-cho-xe-mazda-1.png" alt="range" />
                <div class="Car">
                    <h4>Camera 360 độ ICAR Elliview V5-P </h4>
                    <p class="price">15.000.000 VNĐ</p>
                    <button class="btnn">Xem chi tiết</button>
                </div>
            </div>
            <div class="range__card">
                <img src="${pageContext.request.contextPath}/views/client/assets/anh-dai-dien-phan-mem-dinh-vi-luu-lo-trinh-xe-mycar.png" alt="range" />
                <div class="Car">
                    <h4>Phần mềm Định vị & Lưu lộ trình xe MYCAR+</h4>
                    <p class="price">200.000 VNĐ</p>
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

    <section class="section__container location__container" id="rent" style="max-width: 100%;">
        <div class="location__image">
            <img src="${pageContext.request.contextPath}/views/client/assets/138f77f6-xe-may-danh-cho-hoc-sinh-cap-3-1.jpg" alt="location" />
        </div>
        <div class="location__content">
            <h2 class="section__header">GIẢM GIÁ LÊN ĐẾN <span style="color: red;">25%</span> CHO SINH VIÊN NHẬP HỌC
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
                    <li>
                        <a href="#"><i class="ri-facebook-fill"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="ri-twitter-fill"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="ri-linkedin-fill"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="footer__bar">
            Copyright © 2024
        </div>
    </footer>

</body>
</html>