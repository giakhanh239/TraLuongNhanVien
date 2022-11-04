<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh Sách</title>
<style>
.center {
	margin-left: auto;
	margin-right: auto;
}

button {
	
}
</style>

</head>
<%
ArrayList<Khachhang> listKH = new ArrayList<>();
if (request.getParameter("tenkh") != null) {
	KhachhangDAO dao = new KhachhangDAO();
	listKH = dao.getDSKhachhang(request.getParameter("tenkh"));
	session.setAttribute("tenKH", request.getParameter("tenkh"));
}
%>
<body>
	<h2 style="text-align: center;">Quản lý cửa hàng</h2>
	<h2 style="margin-left: 500px; text-align: left">Tình Trạng Lương</h2>
	<form name="timkiemkh"></form>
	<table class="center"
		style="width: 50%; border: 1px solid black; border-collapse: collapse;">
		<thead>
			<th style="border: 1px solid black; padding: 0 15px 0 15px;">STT
			
			</td>
			<th style="border: 1px solid black; padding: 0 15px 0 15px;">Mã
			
			</td>
			<th style="border: 1px solid black; padding: 0 15px 0 15px;">Tên
			
			</td>
			<th style="border: 1px solid black; padding: 0 15px 0 15px;">Vị
				Trí
			</td>
			<th style="border: 1px solid black; padding: 0 15px 0 15px;">Tổng
				tiền lương
			</td>
			<th style="border: 1px solid black; padding: 0 15px 0 15px;">Thời
				điểm thanh toán
			</td>
		</thead>
		<%
		if (listKH != null)
			for (int i = 0; i < listKH.size(); i++) {
		%>
		<tr>
			<td style="border: 1px solid black; padding: 0 15px 0 15px;"><%=listKH.get(i).getId()%></td>
			<td style="border: 1px solid black; padding: 0 15px 0 15px;"><%=listKH.get(i).getTen()%></td>
			<td style="border: 1px solid black; padding: 0 15px 0 15px;"><%=listKH.get(i).getSoID()%></td>
			<td style="border: 1px solid black; padding: 0 15px 0 15px;"><%=listKH.get(i).getKieuID()%></td>
			<td style="border: 1px solid black; padding: 0 15px 0 15px;"><%=listKH.get(i).getDienthoai()%></td>
			<td style="border: 1px solid black; padding: 0 15px 0 15px;"><%=listKH.get(i).getEmail()%></td>
			<td style="border: 1px solid black; padding: 0 15px 0 15px;"><%=listKH.get(i).getDiachi()%></td>
			<td style="border: 1px solid black; padding: 0 15px 0 15px;"><button
					onclick="document.location='GDTimtour.jsp'">Chọn</button></td>
		</tr>
		<%
		}
		%>
	</table>
	<h2 style="text-align: center;"=>
			<input type="submit" value="Quay Lại" />
		</h2>
</body>
</html>
