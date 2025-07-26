<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <style>
        body {
            background-color: #f8f9fa;
        }

        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #343a40;
            color: white;
            padding: 20px;
        }

        .sidebar .nav-link {
            color: white;
            font-size: 1.2rem;
            padding: 10px;
            border-radius: 5px;
        }

        .sidebar .nav-link:hover, .sidebar .nav-link.active {
            background-color: #495057;
        }

        .content {
            flex: 1;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .header {
            background: white;
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 2px solid #dee2e6;
        }

        .search-box {
            width: 250px;
            display: flex;
            align-items: center;
            border: 1px solid #ced4da;
            border-radius: 5px;
            padding: 5px 10px;
            background: white;
        }

        .search-box input {
            border: none;
            outline: none;
            width: 100%;
        }

        .search-box i {
            color: gray;
        }
    </style>
</head>
<body>

    <%
        // Lấy tham số tab từ URL, nếu không có tham số thì mặc định là 'dashboard'
        String activeTab = request.getParameter("tab");
        if (activeTab == null) {
            activeTab = "dashboard"; // Mặc định tab là 'dashboard'
        }
    %>

    <div class="header">
        <h3>Admin Dashboard</h3>
        <div class="search-box">
            <input type="text" placeholder="Search..."> <i class="bi bi-search"></i>
        </div>
    </div>

    <div class="container-fluid mt-3">
        <div class="d-flex">
            <div class="sidebar">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link <%= "dashboard".equals(activeTab) ? "active" : "" %>" href="javascript:void(0);" data-tab="dashboard">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%= "brand".equals(activeTab) ? "active" : "" %>" href="javascript:void(0);" data-tab="brand">Brand</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%= "motorcycle".equals(activeTab) ? "active" : "" %>" href="javascript:void(0);" data-tab="motorcycle">Motorcycle</a>
                    </li>
                </ul>
            </div>

            <div class="content tab-content">
                <div class="tab-pane fade <%= "dashboard".equals(activeTab) ? "show active" : "" %>" id="dashboard">
                    <%@ include file="dashboard.jsp" %>
                </div>
                <div class="tab-pane fade <%= "brand".equals(activeTab) ? "show active" : "" %>" id="brand">
                    <%@ include file="brand.jsp" %>
                </div>
                <div class="tab-pane fade <%= "motorcycle".equals(activeTab) ? "show active" : "" %>" id="motorcycle">
                    <%@ include file="motorcycle.jsp" %>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const tabLinks = document.querySelectorAll('.nav-link');
            const tabs = document.querySelectorAll('.tab-pane');

            // Kiểm tra nếu có tab đã được chọn trước đó trong localStorage, nếu không thì mặc định là 'dashboard'
            let activeTab = localStorage.getItem('activeTab');
            if (!activeTab) {
                activeTab = 'dashboard'; // Mặc định là 'dashboard' nếu không có trong localStorage
            }

            // Cập nhật tab ban đầu
            setActiveTab(activeTab);

            tabLinks.forEach(link => {
                link.addEventListener('click', function(e) {
                    e.preventDefault();

                    const tabName = this.getAttribute('data-tab');
                    localStorage.setItem('activeTab', tabName); // Lưu trạng thái tab vào localStorage
                    setActiveTab(tabName); // Cập nhật tab hiện tại
                });
            });

            function setActiveTab(tabName) {
                // Xóa lớp 'active' ở tất cả các tab
                tabLinks.forEach(link => link.classList.remove('active'));
                tabs.forEach(tab => tab.classList.remove('show', 'active'));

                // Thêm lớp 'active' vào tab được chọn
                const activeLink = document.querySelector(`.nav-link[data-tab="${tabName}"]`);
                const activeTab = document.getElementById(tabName);

                if (activeLink) activeLink.classList.add('active');
                if (activeTab) activeTab.classList.add('show', 'active');

                // Tải nội dung động nếu cần (ví dụ: nội dung của tab được tải từ các trang JSP)
                // Ở đây có thể là việc thêm vào dữ liệu cụ thể cho từng tab, ví dụ gọi AJAX hoặc lấy dữ liệu từ server.
            }
        });
    </script>

</body>
</html>
