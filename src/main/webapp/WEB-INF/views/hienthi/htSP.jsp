<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thêm Màu Sắc</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Thêm Sản Phẩm</h2>
    <form action="/api/sp/update" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">ID:</label>
            <input type="text" id="id" name="id" value="${h.id}" class="form-control" readonly required>
        </div>

        <div class="mb-3">
            <label for="ma" class="form-label">Mã:</label>
            <input type="text" id="ma" name="ma" value="${h.ma}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="ten" class="form-label">Tên:</label>
            <input type="text" id="ten" name="ten" value="${h.ten}" class="form-control" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Trạng Thái:</label><br>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" id="loai1" name="trangThai" value="true" ${h.trangThai == true ? "checked" : ""}>
                <label class="form-check-label" for="loai1">Loại 1</label>
            </div>
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" id="loai2" name="trangThai" value="false" ${h.trangThai == false ? "checked" : ""}>
                <label class="form-check-label" for="loai2">Loại 2</label>
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Update</button>
    </form>
    <button type="submit" class="btn btn-primary"><a href="/api/sp/ht">Quay Lại</a></button>
</div>

<!-- Bootstrap JS Bundle (including Popper) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
