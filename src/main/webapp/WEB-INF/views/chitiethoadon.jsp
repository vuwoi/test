<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Quản lý Chi Tiết Hóa Đơn</title>
    <!-- Thêm Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center mb-4">Quản lý Chi Tiết Hóa Đơn</h1>

    <h2>Thêm Chi Tiết Hóa Đơn</h2>
    <form action="/api/hdct/them" method="post" class="mb-5">
        <div class="mb-3">
            <label for="idHD" class="form-label">ID Hóa Đơn:</label>
            <select class="form-select" id="idHD" name="idHD">
                <c:forEach items="${lstHD}" var="idSPC">
                    <option value="${idSPC.id}">${idSPC.id}</option>
                </c:forEach>
            </select>
        </div>

        <div class="mb-3">
            <label for="idSPCT" class="form-label">ID Sản Phẩm Chi Tiết:</label>
            <select class="form-select" id="idSPCT" name="idSPCT">
                <c:forEach items="${lstSPCT}" var="idSPC">
                    <option value="${idSPC.id}">${idSPC.maSPCT}</option>
                </c:forEach>
            </select>
        </div>

        <div class="mb-3">
            <label for="soLuong" class="form-label">Số Lượng:</label>
            <input type="text" class="form-control" id="soLuong" name="soLuong">
        </div>

        <div class="mb-3">
            <label for="donGia" class="form-label">Đơn Giá:</label>
            <input type="text" class="form-control" id="donGia" name="donGia">
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

    <h2>Danh Sách Chi Tiết Hóa Đơn</h2>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>ID Hóa Đơn</th>
            <th>ID Sản Phẩm Chi Tiết</th>
            <th>Số Lượng</th>
            <th>Đơn Giá</th>
            <th>Trạng Thái</th>
            <th>Thao Tác</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="cthd" items="${lstCTHD}">
            <tr>
                <td>${cthd.id}</td>
                <td>${cthd.idHD.id}</td>
                <td>${cthd.idSPCT.maSPCT}</td>
                <td>${cthd.soLuong}</td>
                <td>${cthd.donGia}</td>
                <td>${cthd.trangThai ? "Đã thanh toán":"Chưa thanh toán"}</td>
                <td>
                    <a href="/api/hdct/hienthi/${cthd.id}" class="btn btn-sm btn-warning">Sửa</a>
                    <a href="/api/hdct/delete?id=${cthd.id}" class="btn btn-sm btn-danger" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Thêm JavaScript của Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
