<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>
<div class="container">
    <div class="row">
        <!-- Vertical Navbar -->
        <nav id="sidebarMenu" class="col-md-6 col-lg-2 d-md-block bg-light sidebar collapse">
            <div class="position-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/api">
                            <i class="bi bi-house-door"></i> Trang Chủ
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/api/hd/ht">
                            <i class="bi bi-box-seam"></i> Quản lý Hóa Đơn
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/api/hdct/ht">
                            <i class="bi bi-people"></i> Quản lý Chi Tiết Hóa Đơn
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/api/kh/ht">
                            <i class="bi bi-palette"></i> Quản lý Khách Hàng
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/api/kt/ht">
                            <i class="bi bi-rulers"></i> Quản lý Kích Thước
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/api/ms/ht">
                            <i class="bi bi-people"></i> Quản lý Màu Sắc
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/api/nv/ht">
                            <i class="bi bi-rulers"></i> Quản lý Nhân Viên
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/api/sp/ht">
                            <i class="bi bi-people"></i> Quản lý Sản Phẩm
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/api/spctt/ht">
                            <i class="bi bi-rulers"></i> Quản lý Sản Phẩm Chi Tiết
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <!-- Content -->
        <main class="col-md-7 ms-sm-auto col-lg-10 px-md-4">
            <h1>Chào mừng đến với trang quản lý!</h1>
            <img src="https://i.pinimg.com/originals/54/19/c9/5419c9ce3ffade43b2837daa2c96b1d9.gif" alt="" width="20%">
        </main>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<!-- Optional: Bootstrap Icons -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
<%--<div class="container">--%>
<%--    <div class="row">--%>
<%--        <div class="col-3">--%>
<%--            <ul class="list-group">--%>
<%--                <li class="list-group-item"><a href="/api/hd/ht">Hóa Đơn</a></li>--%>
<%--                <li class="list-group-item"><a href="/api/hdct/ht">Hóa Đơn Chi Tiết</a></li>--%>
<%--                <li class="list-group-item"><a href="/api/kh/ht">Khách Hàng</a></li>--%>
<%--                <li class="list-group-item"><a href="/api/kt/ht">Kích Thước</a></li>--%>
<%--                <li class="list-group-item"><a href="/api/ms/ht">Màu Sắc</a></li>--%>
<%--                <li class="list-group-item"><a href="/api/nv/ht">Nhân Viên</a></li>--%>
<%--                <li class="list-group-item"><a href="/api/sp/ht">Sản Phẩm</a></li>--%>
<%--                <li class="list-group-item"><a href="/api/spctt/ht">Sản Phẩm Chi Tiết</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--        <div class="col-7"></div>--%>
<%--    </div>--%>

<%--</div>--%>
</body>
</html>