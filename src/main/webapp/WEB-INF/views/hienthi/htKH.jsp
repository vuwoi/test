<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thêm Khách Hàng</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Thêm Khách Hàng</h2>
    <form action="/api/kh/update" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">ID Khách Hàng:</label>
            <input type="text" id="id" name="id" value="${h.id}" class="form-control" readonly required>
        </div>

        <div class="mb-3">
            <label for="ten" class="form-label">Tên Khách Hàng:</label>
            <input type="text" id="ten" name="ten" value="${h.ten}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="sdt" class="form-label">SĐT:</label>
            <input type="text" id="sdt" name="sdt" value="${h.sdt}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="maKH" class="form-label">Mã Khách Hàng:</label>
            <input type="text" id="maKH" name="maKH" value="${h.maKH}" class="form-control">
        </div>

        <div class="mb-3">
            <label class="form-label">Trạng Thái:</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" id="vip" name="trangThai" value="true" ${h.trangThai ? "checked" : ""}>
                <label class="form-check-label" for="vip">Vip</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" id="cui" name="trangThai" value="false" ${!h.trangThai ? "checked" : ""}>
                <label class="form-check-label" for="cui">Cùi</label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>

<!-- Bootstrap JS Bundle (including Popper) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
