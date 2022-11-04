<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>
<style>
button {
	margin: auto;
	margin-top: 30px;
	display: block;
}

.container {
	height: 100px;
	position: relative;
}

.center {
	margin: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}
</style>
</head>
<body>
	<h2 style="text-align: center";>Quản Lý Cửa Hàng</h2>
	<h2 style="margin-left: 500px; text-align: left">Chức năng chính</h2>
	<div class="container">
		<div class="center">
			<button onclick="document.location='GDTimkhachhang.jsp'">Trả
				lương cho nhân viên</button>
			<button onclick="document.location='GDTimkhachhang.jsp'">Thống
				kê</button>
		</div>
	</div>
	<h2 style="text-align: center;"=>
			<input type="submit" value="Quay Lại" />
		</h2>
</body>
</html>
