<%@ page contentType="text/html; charset=UTF-8" %>
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
<h2>Sản Phẩm Chi Tiết</h2>
<div class="container mt-5">
    <form action="/api/spctt/update" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">ID:</label>
            <input type="text" id="id" name="id" value="${h.id}" class="form-control" readonly required>
        </div>

        <div class="mb-3">
            <label for="maSPCT" class="form-label">Mã SPCT:</label>
            <input type="text" id="maSPCT" name="maSPCT" value="${h.maSPCT}" class="form-control">
        </div>

        <div class="mb-3">
            <label for="soLuong" class="form-label">Số Lượng:</label>
            <input type="number" id="soLuong" name="soLuong" value="${h.soLuong}" class="form-control">
        </div>

        <div class="mb-3">
            <label for="donGia" class="form-label">Đơn Giá:</label>
            <input type="number" id="donGia" name="donGia" value="${h.donGia}" class="form-control">
        </div>

        <div class="mb-3">
            <label for="sanPham" class="form-label">ID Sản Phẩm:</label>
            <input type="text" id="sanPham" name="sanPham" value="${h.sanPham.id}" class="form-control">
        </div>

        <div class="mb-3">
            <label for="mauSac" class="form-label">ID Màu Sắc:</label>
            <input type="text" id="mauSac" name="mauSac" value="${h.mauSac.id}" class="form-control">
        </div>

        <div class="mb-3">
            <label for="kichThuoc" class="form-label">ID Kích Thước:</label>
            <input type="text" id="kichThuoc" name="kichThuoc" value="${h.kichThuoc.id}" class="form-control">
        </div>

        <div class="mb-3">
            <label class="form-label">Trạng Thái:</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" id="trangThai1" name="trangThai" value="true" ${h.trangThai ? "checked" : ""}>
                <label class="form-check-label" for="trangThai1">Còn</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" id="trangThai2" name="trangThai" value="false" ${!h.trangThai ? "checked" : ""}>
                <label class="form-check-label" for="trangThai2">Hết</label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>

<!-- Bootstrap JS Bundle (including Popper) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
