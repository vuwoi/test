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
<div class="container">
    <h2>Hóa Đơn Chi Tiết</h2>
    <form action="/api/hdct/update" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">ID:</label>
            <input type="text" id="id" name="id" value="${h.id}" class="form-control" readonly required>
        </div>

        <div class="mb-3">
            <label for="idHD" class="form-label">ID Hóa Đơn:</label>
            <select id="idHD" name="idHD" class="form-select">
                <c:forEach items="${lstHD}" var="idHD">
                    <option value="${idHD.id}" ${h.idHD.id == idHD.id ? "selected" : ""}>${idHD.id}</option>
                </c:forEach>
            </select>
        </div>

        <div class="mb-3">
            <label for="idSPCT" class="form-label">ID Sản Phẩm Chi Tiết:</label>
            <select id="idSPCT" name="idSPCT" class="form-select">
                <c:forEach items="${lstSPCT}" var="idSPC">
                    <option value="${idSPC.id}" ${h.idSPCT.id == idSPC.id ? "selected" : ""}>${idSPC.maSPCT}</option>
                </c:forEach>
            </select>
        </div>

        <div class="mb-3">
            <label for="soLuong" class="form-label">Số Lượng:</label>
            <input type="text" id="soLuong" name="soLuong" value="${h.soLuong}" class="form-control">
        </div>

        <div class="mb-3">
            <label for="donGia" class="form-label">Đơn Giá:</label>
            <input type="text" id="donGia" name="donGia" value="${h.donGia}" class="form-control">
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
