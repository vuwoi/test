<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Nhân Viên</title>
    <!-- Thêm Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center mb-4">Quản lý Nhân Viên</h1>

    <h2>Thêm Nhân Viên</h2>
    <form action="/api/nv/them" method="post" class="mb-5">
        <div class="mb-3">
            <label for="ten" class="form-label">Tên Nhân Viên:</label>
            <input type="text" class="form-control" id="ten" name="ten" required>
        </div>

        <div class="mb-3">
            <label for="maNV" class="form-label">Mã Nhân Viên:</label>
            <input type="text" class="form-control" id="maNV" name="maNV" required>
        </div>

        <div class="mb-3">
            <label for="tenDangNhap" class="form-label">Tên Đăng Nhập:</label>
            <input type="text" class="form-control" id="tenDangNhap" name="tenDangNhap">
        </div>

        <div class="mb-3">
            <label for="matKhau" class="form-label">Mật Khẩu:</label>
            <input type="text" class="form-control" id="matKhau" name="matKhau">
        </div>

        <div class="mb-3">
            <label class="form-label">Trạng Thái:</label><br>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="vip" name="trangThai" value="0">
                <label class="form-check-label" for="vip">Vip</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="cui" name="trangThai" value="1">
                <label class="form-check-label" for="cui">Cùi</label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Thêm</button>
    </form>

    <h2>Danh Sách Nhân Viên</h2>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>Mã Nhân Viên</th>
            <th>Tên Đăng Nhập</th>
            <th>Mật Khẩu</th>
            <th>Trạng Thái</th>
            <th>Thao Tác</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="nv" items="${lstKT}">
            <tr>
                <td>${nv.id}</td>
                <td>${nv.ten}</td>
                <td>${nv.maNV}</td>
                <td>${nv.tenDangNhap}</td>
                <td>${nv.matKhau}</td>
                <td>${!nv.trangThai ? "Vip" : "Cùi"}</td>
                <td>
                    <a href="/api/nv/update/${nv.id}" class="btn btn-sm btn-warning">Sửa</a>
                    <a href="/api/nv/delete?id=${nv.id}" class="btn btn-sm btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a>
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
