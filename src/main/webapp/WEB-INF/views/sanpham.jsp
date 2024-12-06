<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Sản Phẩm</title>
    <!-- Thêm Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center mb-4">Quản lý Sản Phẩm</h1>

    <h2>Thêm Sản Phẩm</h2>
    <form action="/api/sp/them" method="post" class="mb-5">
        <div class="mb-3">
            <label for="ma" class="form-label">Mã Sản Phẩm:</label>
            <input type="text" class="form-control" id="ma" name="ma" required>
        </div>

        <div class="mb-3">
            <label for="ten" class="form-label">Tên Sản Phẩm:</label>
            <input type="text" class="form-control" id="ten" name="ten" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Trạng Thái:</label><br>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="loai2" name="trangThai" value="0">
                <label class="form-check-label" for="loai2">Loại 2</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="loai1" name="trangThai" value="1">
                <label class="form-check-label" for="loai1">Loại 1</label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Thêm</button>
    </form>

    <h2>Danh Sách Sản Phẩm</h2>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Mã Sản Phẩm</th>
            <th>Tên Sản Phẩm</th>
            <th>Trạng Thái</th>
            <th>Thao Tác</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="sp" items="${lstKT}">
            <tr>
                <td>${sp.id}</td>
                <td>${sp.ma}</td>
                <td>${sp.ten}</td>
                <td>${sp.trangThai ? "Loại 1" : "Loại 2"}</td>
                <td>
                    <a href="/api/sp/update/${sp.id}" class="btn btn-sm btn-warning">Sửa</a>
                    <a href="/api/sp/delete?id=${sp.id}" class="btn btn-sm btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a>
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
