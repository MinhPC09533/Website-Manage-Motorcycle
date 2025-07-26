<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/views/admin/css/styleAdmin.css">
  <link rel="stylesheet" href="https://unpkg.com/ionicons@5.5.2/dist/ionicons.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

</head>
<body>
<div class="cardBox">
                <div class="card">
                    <div>
                        <div class="number">1.504</div>
                        <div class="cardName">Daily Views</div>
                    </div>
                    <div class="iconBx">
                        <i class="bi bi-newspaper"></i>
                    </div>
                </div>
            
           
                <div class="card">
                    <div>
                        <div class="number">80</div>
                        <div class="cardName">Sales</div>
                    </div>
                    <div class="iconBx">
                       <i class="bi bi-receipt"></i>
                    </div>
                </div>
          
           
                <div class="card">
                    <div>
                        <div class="number">284</div>
                        <div class="cardName">Comments</div>
                    </div>
                    <div class="iconBx">
                        <i class="bi bi-chat-square-text"></i>
                    </div>
                </div>
           
           
                <div class="card">
                    <div>
                        <div class="number">$7.842</div>
                        <div class="cardName">Earning</div>
                    </div>
                    <div class="iconBx">
                        <i class="bi bi-coin"></i>
                    </div>
                </div>
            </div>

            <div class="details">
                <div class="recentOrders">
                    <div class="cardHeader">
                        <h2>RecentOrder</h2>
                        <a href="#" class="btn">View All</a>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <td>Name</td>
                                <td>Price</td>
                                <td>Payment</td>
                                <td>Status</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Honda</td>
                                <td>$5000</td>
                                <td>Paid</td>
                                <td><span class="status delivered">Delivered</span></td>
                            </tr>
                            <tr>
                                <td>Suzuki</td>
                                <td>$7000</td>
                                <td>Paid</td>
                                <td><span class="status pending">Pending</span></td>
                            </tr>
                            <tr>
                                <td>Wave</td>
                                <td>$3000</td>
                                <td>Paid</td>
                                <td><span class="status return">Return</span></td>
                            </tr>
                            <tr>
                                <td>Kawasaki</td>
                                <td>$9000</td>
                                <td>Paid</td>
                                <td><span class="status inprogress">In Progress</span></td>
                            </tr>
                            <tr>
                                <td>Honda</td>
                                <td>$5000</td>
                                <td>Paid</td>
                                <td><span class="status delivered">Delivered</span></td>
                            </tr>
                            <tr>
                                <td>Suzuki</td>
                                <td>$7000</td>
                                <td>Paid</td>
                                <td><span class="status pending">Pending</span></td>
                            </tr>
                            <tr>
                                <td>Wave</td>
                                <td>$3000</td>
                                <td>Paid</td>
                                <td><span class="status return">Return</span></td>
                            </tr>
                            <tr>
                                <td>Kawasaki</td>
                                <td>$9000</td>
                                <td>Paid</td>
                                <td><span class="status inprogress">In Progress</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="recentCustomers">
                <div class="cardHeader">
                    <h2>Recent Customers</h2>
                </div>
                <table>
                    <tr>
                        <td width="60px">
                            <div class="imgBx"><img src="${pageContext.request.contextPath}/views/admin/assets/tải xuống.jpg" alt=""></div>
                        </td>
                        <td>
                            <h4>David <br><span>Italy</span></h4>
                        </td>
                    </tr>
                    <tr>
                        <td width="60px">
                            <div class="imgBx"><img src="${pageContext.request.contextPath}/views/admin/assets/8737.png_860.png" alt=""></div>
                        </td>
                        <td>
                            <h4>Jones <br><span>USA</span></h4>
                        </td>
                    </tr>
                    <tr>
                        <td width="60px">
                            <div class="imgBx"><img src="${pageContext.request.contextPath}/views/admin/assets/sua_cua_kinh.jpg" alt=""></div>
                        </td>
                        <td>
                            <h4>Lee <br><span>China</span></h4>
                        </td>
                    </tr>
                    <tr>
                        <td width="60px">
                            <div class="imgBx"><img src="${pageContext.request.contextPath}/views/admin/assets/tải xuống.jpg" alt=""></div>
                        </td>
                        <td>
                            <h4>Minh <br><span>VietNam</span></h4>
                        </td>
                    </tr>
                    <tr>
                        <td width="60px">
                            <div class="imgBx"><img src="${pageContext.request.contextPath}/views/admin/assets/8737.png_860.png" alt=""></div>
                        </td>
                        <td>
                            <h4>Tanaka <br><span>Japan</span></h4>
                        </td>
                    </tr>
                    <tr>
                        <td width="60px">
                            <div class="imgBx"><img src="${pageContext.request.contextPath}/views/admin/assets/sua_cua_kinh.jpg" alt=""></div>
                        </td>
                        <td>
                            <h4>Wakhap <br><span>ThaiLand</span></h4>
                        </td>
                    </tr>
                    <tr>
                        <td width="60px">
                            <div class="imgBx"><img src="${pageContext.request.contextPath}/views/admin/assets/tải xuống.jpg" alt=""></div>
                        </td>
                        <td>
                            <h4>David <br><span>Italy</span></h4>
                        </td>
                    </tr>
                </table>

            </div>
        </div>

</body>
</html>