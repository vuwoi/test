<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý Sản Phẩm Chi Tiết</title>
    <!-- Thêm Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center mb-4">Quản lý Sản Phẩm Chi Tiết</h1>

    <h2>Thêm Sản Phẩm Chi Tiết</h2>
    <form action="/api/spctt/them" method="post" class="mb-5">
        <div class="mb-3">
            <label for="maSPCT" class="form-label">Mã Sản Phẩm Chi Tiết:</label>
            <input type="text" class="form-control" id="maSPCT" name="maSPCT" required>
        </div>

        <div class="mb-3">
            <label for="soLuong" class="form-label">Số Lượng:</label>
            <input type="number" class="form-control" id="soLuong" name="soLuong" required>
        </div>

        <div class="mb-3">
            <label for="donGia" class="form-label">Đơn Giá:</label>
            <input type="number" class="form-control" id="donGia" name="donGia" required>
        </div>

        <div class="mb-3">
            <label for="sanPham" class="form-label">ID Sản Phẩm:</label>
            <input type="text" class="form-control" id="sanPham" name="sanPham" required>
        </div>

        <div class="mb-3">
            <label for="mauSac" class="form-label">ID Màu Sắc:</label>
            <input type="text" class="form-control" id="mauSac" name="mauSac" required>
        </div>

        <div class="mb-3">
            <label for="kichThuoc" class="form-label">ID Kích Thước:</label>
            <input type="text" class="form-control" id="kichThuoc" name="kichThuoc" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Trạng Thái:</label><br>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="het" name="trangThai" value="0">
                <label class="form-check-label" for="het">Hết</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" class="form-check-input" id="con" name="trangThai" value="1">
                <label class="form-check-label" for="con">Còn</label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Thêm</button>
    </form>

    <h2>Danh Sách Sản Phẩm Chi Tiết</h2>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Mã</th>
            <th>Số Lượng</th>
            <th>Đơn Giá</th>
            <th>ID Sản Phẩm</th>
            <th>ID Màu Sắc</th>
            <th>ID Kích Thước</th>
            <th>Trạng Thái</th>
            <th>Thao Tác</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="spct" items="${lstKT}">
            <tr>
                <td>${spct.id}</td>
                <td>${spct.maSPCT}</td>
                <td>${spct.soLuong}</td>
                <td>${spct.donGia}</td>
                <td>${spct.sanPham.id}</td>
                <td>${spct.mauSac.id}</td>
                <td>${spct.kichThuoc.id}</td>
                <td>${spct.trangThai ? "Còn" : "Hết"}</td>
                <td>
                    <a href="/api/spctt/update/${spct.id}" class="btn btn-sm btn-warning">Sửa</a>
                    <a href="/api/spctt/delete?id=${spct.id}" class="btn btn-sm btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a>
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
