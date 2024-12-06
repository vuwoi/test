<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Hóa Đơn</title>
    <!-- Thêm Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center mb-4">Quản lý Hóa Đơn</h1>

    <h2>Thêm Hóa Đơn</h2>
    <form action="/api/hd/them" method="post" class="mb-5">
        <div class="mb-3">
            <label for="nhanVien" class="form-label">ID Nhân Viên:</label>
            <input type="text" class="form-control" id="nhanVien" name="nhanVien" required>
        </div>

        <div class="mb-3">
            <label for="khachHang" class="form-label">ID Khách Hàng:</label>
            <input type="text" class="form-control" id="khachHang" name="khachHang" required>
        </div>

        <div class="mb-3">
            <label for="ngayMuaHang" class="form-label">Ngày Mua Hàng:</label>
            <input type="date" class="form-control" id="ngayMuaHang" name="ngayMuaHang">
        </div>

        <div class="mb-3">
            <label class="form-label">Trạng Thái:</label><br>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="trangThai1" name="trangThai" value="1" ${"đã thanh toán".equals(h.trangThai)? "checked" : ""}>
                <label class="form-check-label" for="trangThai1">Đã thanh toán</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="trangThai2" name="trangThai" value="0" ${"chưa thanh toán".equals(h.trangThai)? "checked" : ""}>
                <label class="form-check-label" for="trangThai2">Chưa thanh toán</label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Thêm</button>
    </form>

    <h2>Danh Sách Hóa Đơn</h2>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>ID Nhân Viên</th>
            <th>ID Khách Hàng</th>
            <th>Ngày Mua Hàng</th>
            <th>Trạng Thái</th>
            <th>Thao Tác</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="hd" items="${lstHD}">
            <tr>
                <td>${hd.id}</td>
                <td>${hd.nhanVien.id}</td>
                <td>${hd.khachHang.id}</td>
                <td>${hd.ngayMuaHang}</td>
                <td>${!hd.trangThai ? "Chưa thanh toán":"Đã thanh toán"}</td>
                <td>
                    <a href="/api/hd/update/${hd.id}" class="btn btn-sm btn-warning">Sửa</a>
                    <a href="/api/hd/delete?id=${hd.id}" class="btn btn-sm btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a>
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
