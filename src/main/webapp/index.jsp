<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản lý cửa hàng</title>
<style>
.center {
	margin-left: auto;
	margin-right: auto;
}

table {
	border-spacing: 10px;
}
</style>
</head>
<body>
	<%
	if (request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("fail")) {
	%>
	<h4 style="color: tomato; text-align: center">Sai tên đăng
		nhập/mật khẩu!</h4>
	<%
	}
	%>
	<h2 style="text-align: center;">Quản lý cửa hàng</h2>
	<h2 style="margin-left: 500px; text-align: left">Đăng nhập</h2>
	<form name="dangnhap" action="doDangNhap.jsp" method="post">
		<table class="center" border="0";>
			<tr>
				<td>Tên đăng nhập:</td>
			</tr>
			<tr>
				<td><input type="text" name="username" id="username" required /></td>
			</tr>
			<tr>
				<td>Mật khẩu:</td>
			</tr>
			<tr>
				<td><input type="password" name="password" id="password"
					required /></td>

			</tr>
		</table>
		<h2 style="text-align: center;"=>
			<input type="submit" value="Đăng nhập" />
		</h2>
	</form>
</body>
</html>
