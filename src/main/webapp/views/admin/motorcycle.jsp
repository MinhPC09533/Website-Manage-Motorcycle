<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Motorcycle Management</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 20px;
        background-color: #f4f4f4;
    }
    .container {
        width: 70%;
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
    input[type="text"], input[type="number"], textarea {
        padding: 8px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 5px;
        width: 100%;
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
        <h2>Motorcycle Management</h2>
        <c:url var="path" value="/views/motorcycle" />

        <c:if test="${not empty message}">
            <p style="color: green; font-weight: bold;">${message}</p>
        </c:if>
        <form action="${pageContext.request.contextPath}/views/motorcycle/index" method="post" enctype="multipart/form-data">

            <label>Id:</label>
            <input type="text" readonly name="motorcycle_id" value="${item1.motorcycle_id}">
            
            <label>Name:</label>
            <input type="text" name="name" value="${item1.name}">
            
            <label>Price:</label>
            <input type="number" name="price" value="${item1.price}">
            
            <label>Quality:</label>
            <input type="number" name="stock_quantity" value="${item1.stock_quantity}">
            
            <label>Description:</label>
            <textarea name="description">${item1.description}</textarea>
            
            <label>Image URL:</label>
            <input type="file" name="image">

            <div class="button-group">
                <input type="submit" formaction="${path}/create" value="Create" style="background-color: #28a745; color: white;">
                <input type="submit" formaction="${path}/update" value="Update" style="background-color: #ffc107; color: black;">
                <input type="submit" formaction="${path}/delete" value="Delete" style="background-color: #dc3545; color: white;" onclick="return confirmDelete();">
                <input type="submit" formaction="${path}/reset" value="Reset" style="background-color: #6c757d; color: white;">
            </div>
        </form>

        <hr>

        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quality</th>
                    <th>Description</th>
                   <th scope="col">Ảnh</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="d" items="${list1}"> <!-- Sử dụng list1 -->
                    <tr>
                        <td>${d.motorcycle_id}</td>
                        <td>${d.name}</td>
                        <td>${d.price}</td>
                        <td>${d.stock_quantity}</td>
                        <td>${d.description}</td>
                        <td>	<img alt="" src="/MinhnqPC09533_Assignment_1/${d.image_url}" width="50" height="50">
</td>
                        <td><a href="${path}/edit/${d.motorcycle_id}">Edit</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </div>
</body>
</html>
