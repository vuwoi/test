<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Màu Sắc</title>
    <!-- Thêm Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center mb-4">Quản lý Màu Sắc</h1>

    <h2>Thêm Màu Sắc</h2>
    <form action="/api/ms/them" method="post" class="mb-5">
        <div class="mb-3">
            <label for="ma" class="form-label">Mã Màu Sắc:</label>
            <input type="text" class="form-control" id="ma" name="ma" required>
        </div>

        <div class="mb-3">
            <label for="ten" class="form-label">Tên Màu Sắc:</label>
            <input type="text" class="form-control" id="ten" name="ten" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Trạng Thái:</label><br>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="mau1" name="trangThai" value="0">
                <label class="form-check-label" for="mau1">Màu 1</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="mau2" name="trangThai" value="1">
                <label class="form-check-label" for="mau2">Màu 2</label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Thêm</button>
    </form>

    <h2>Danh Sách Màu Sắc</h2>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Mã Màu Sắc</th>
            <th>Tên Màu Sắc</th>
            <th>Trạng Thái</th>
            <th>Thao Tác</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="ms" items="${lstKT}">
            <tr>
                <td>${ms.id}</td>
                <td>${ms.ma}</td>
                <td>${ms.ten}</td>
                <td>${ms.trangThai ? "Màu 2":"Màu 1"}</td>
                <td>
                    <a href="/api/ms/update/${ms.id}" class="btn btn-sm btn-warning">Sửa</a>
                    <a href="/api/ms/delete?id=${ms.id}" class="btn btn-sm btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a>
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
