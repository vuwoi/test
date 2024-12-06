<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Cập Nhật Hóa Đơn</h2>
    <form action="/api/hd/update" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">ID Hóa Đơn:</label>
            <input type="text" id="id" name="id" value="${h.id}" class="form-control" readonly required>
        </div>

        <div class="mb-3">
            <label for="nhanVien" class="form-label">ID Nhân Viên:</label>
            <input type="text" id="nhanVien" name="nhanVien" value="${h.nhanVien.id}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="khachHang" class="form-label">ID Khách Hàng:</label>
            <input type="text" id="khachHang" name="khachHang" value="${h.khachHang.id}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="ngayMuaHang" class="form-label">Ngày Mua Hàng:</label>
            <input type="date" id="ngayMuaHang" name="ngayMuaHang" value="${h.ngayMuaHang}" class="form-control">
        </div>

        <div class="mb-3">
            <label class="form-label">Trạng Thái:</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" id="trangThai1" name="trangThai" value="true" ${h.trangThai ? "checked" : ""}>
                <label class="form-check-label" for="trangThai1">Đã thanh toán</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" id="trangThai2" name="trangThai" value="false" ${!h.trangThai ? "checked" : ""}>
                <label class="form-check-label" for="trangThai2">Chưa thanh toán</label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>

<!-- Bootstrap JS Bundle (including Popper) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
