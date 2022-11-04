<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hoá đơn</title>
    </head>
    <%
        Khachhang kh = new Khachhang();
        if(session.getAttribute("tenKH")!=null){
            KhachhangDAO dao = new KhachhangDAO();
            kh = dao.getKhachhang(session.getAttribute("tenKH").toString());
            
        }
    %>
    <body>
        <h2 style="text-align: center;">Hoá đơn chi tiết</h2>
        <h3>Thông tin khách hàng:</h3>
    <%if (kh!=null){%>
    <table style="border: 1px solid black;border-collapse: collapse;">
        <table border="0">
            <tr>
                <td>Tên khách hàng:</td>
                <td><%=kh.getTen()%></td>
            </tr>
            <tr>
                <td>Số ID:</td>
                <td><%=kh.getSoID()%></td>
            </tr>
            <tr>
                <td>Kiểu ID:</td>
                <td><%=kh.getKieuID()%></td>
            </tr>
            <tr>
                <td>Số điện thoại:</td>
                <td><%=kh.getDienthoai()%></td>
            </tr>
            <tr>
                <td>Eamil:</td>
                <td><%=kh.getEmail()%></td>
            </tr>
            <tr>
                <td>Địa chỉ:</td>
                <td><%=kh.getDiachi()%></td>
            </tr>
        </table>

    </table>
    <%}%>
    <h3>Thông tin vé:</h3>
    
    <button onclick="document.location='GDTimtour.jsp'">Tiếp tục mua vé</button>
    <button onclick="document.location='GDChinhNV.jsp'">Thanh toán</button>
    </body>
</html>
