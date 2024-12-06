<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Khách Hàng</title>
    <!-- Thêm Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center mb-4">Quản lý Khách Hàng</h1>

    <h2>Thêm Khách Hàng</h2>
    <form action="/api/kh/them" method="post" class="mb-5">
        <div class="mb-3">
            <label for="ten" class="form-label">Tên Khách Hàng:</label>
            <input type="text" class="form-control" id="ten" name="ten" required>
        </div>

        <div class="mb-3">
            <label for="sdt" class="form-label">SĐT:</label>
            <input type="text" class="form-control" id="sdt" name="sdt" required>
        </div>

        <div class="mb-3">
            <label for="maKH" class="form-label">Mã Khách Hàng:</label>
            <input type="text" class="form-control" id="maKH" name="maKH">
        </div>

        <div class="mb-3">
            <label class="form-label">Trạng Thái:</label><br>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="trangThaiVip" name="trangThai" value="0">
                <label class="form-check-label" for="trangThaiVip">Vip</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="trangThaiCui" name="trangThai" value="1">
                <label class="form-check-label" for="trangThaiCui">Cùi</label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Thêm</button>
    </form>

    <h2>Danh Sách Khách Hàng</h2>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Tên Khách Hàng</th>
            <th>SĐT</th>
            <th>Mã Khách Hàng</th>
            <th>Trạng Thái</th>
            <th>Thao Tác</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="hd" items="${lstHD}">
            <tr>
                <td>${hd.id}</td>
                <td>${hd.ten}</td>
                <td>${hd.sdt}</td>
                <td>${hd.maKH}</td>
                <td>${!hd.trangThai ? "Vip":"Cùi"}</td>
                <td>
                    <a href="/api/kh/update/${hd.id}" class="btn btn-sm btn-warning">Sửa</a>
                    <a href="/api/kh/delete?id=${hd.id}" class="btn btn-sm btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Thêm Bootstrap JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
