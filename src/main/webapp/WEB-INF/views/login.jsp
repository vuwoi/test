<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>Đăng Nhập</h1>
${error}
<form action="/api/login" method="post">
    <label for="tenDN">Tên đăng nhập:</label>
    <input type="text" id="tenDN" name="tenDN" required><br><br>

    <label for="matKhau">Mật khẩu:</label>
    <input type="password" id="matKhau" name="matKhau" required><br><br>
    <button type="submit">Đăng nhập</button>
</form>
</body>
</html>