<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sửa Nhân Viên</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Sửa Nhân Viên</h2>
    <form action="/api/nv/update" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">ID:</label>
            <input type="text" id="id" name="id" value="${h.id}" class="form-control" readonly required>
        </div>

        <div class="mb-3">
            <label for="ten" class="form-label">Họ Và Tên:</label>
            <input type="text" id="ten" name="ten" value="${h.ten}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="maNV" class="form-label">Mã:</label>
            <input type="text" id="maNV" name="maNV" value="${h.maNV}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="tenDangNhap" class="form-label">Tên Đăng Nhập:</label>
            <input type="text" id="tenDangNhap" name="tenDangNhap" value="${h.tenDangNhap}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="matKhau" class="form-label">Mật Khẩu:</label>
            <input type="text" id="matKhau" name="matKhau" value="${h.matKhau}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Trạng Thái:</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" id="trangThai1" name="trangThai" value="true" ${h.trangThai == true ? "checked" : ""}>
                <label class="form-check-label" for="trangThai1">Cùi</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" id="trangThai2" name="trangThai" value="false" ${h.trangThai == false ? "checked" : ""}>
                <label class="form-check-label" for="trangThai2">Vip</label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>

<!-- Bootstrap JS Bundle (including Popper) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
