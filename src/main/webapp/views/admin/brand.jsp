<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8">
    <title>Brand Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
        }

        .container {
            width: 50%;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
        }

        input[type="text"] {
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
            margin-top: 15px;
        }

        .button-group input {
            padding: 10px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            width: 24%;
        }

        .button-group input:hover {
            opacity: 0.8;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background: white;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
    <script type="text/javascript">
        function confirmDelete() {
            return confirm("Bạn có chắc chắn muốn xóa mục này?");
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Brand Management</h2>
        <c:url var="path" value="/views/brand" />
        
        
        <!-- FORM -->
        <c:if test="${not empty message}">
            <p style="color: green; font-weight: bold;">${message}</p>
        </c:if>
        
        <form method="post">
            <label for="brand_id">Id:</label>
            <input type="text" id="brand_id" readonly name="brand_id" value="${item.brand_id}">
            
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" value="${item.name}">

            <div class="button-group">
                <input type="submit" formaction="${path}/create" value="Create" style="background-color: #28a745; color: white;">
                <input type="submit" formaction="${path}/update" value="Update" style="background-color: #ffc107; color: black;">
                <input type="submit" formaction="${path}/delete" value="Delete" style="background-color: #dc3545; color: white;" onclick="return confirmDelete();">
                <input type="submit" formaction="${path}/reset" value="Reset" style="background-color: #6c757d; color: white;">
            </div>
        </form>

        <hr>

        <!-- TABLE -->
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="d" items="${list}" varStatus="vs">
                    <tr>
                        <td>${d.brand_id}</td>
                        <td>${d.name}</td>
                        <td><a href="${path}/edit/${d.brand_id}">Edit</a></td>
                    </tr>
                </c:forEach>
            </tbody>	
        </table>
    </div>
</body>
</html>
