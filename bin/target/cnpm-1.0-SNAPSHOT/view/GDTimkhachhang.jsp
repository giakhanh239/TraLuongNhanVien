<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tìm khách hàng</title>
        <style>
            .center {
                margin-left: auto;
                margin-right: auto;
            }
        </style>
           
    </head>
    <%
        ArrayList<Khachhang> listKH = new ArrayList<>();
        if(request.getParameter("tenkh")!=null){
            KhachhangDAO dao = new KhachhangDAO();
            listKH = dao.getDSKhachhang(request.getParameter("tenkh"));
            session.setAttribute("tenKH",request.getParameter("tenkh"));
        }
    %>    
    <body>
        <h2 style="text-align:center;">Tìm khách hàng</h2>
        <form name="timkiemkh">
    <table class="center" border="0">
        <tr>
            <td>Tên khách hàng:</td>
            <td><input type="text" name="tenkh" id="tenkh" required /></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Tìm kiếm" /></td>
        </tr>
    </table>
    </form>
        <table class="center" style="width: 50%;border: 1px solid black;border-collapse: collapse;">
    <thead>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Mã</td>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Tên khách hàng</td>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Số ID</td>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Kiểu ID</td>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Điện thoại</td>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Email</td>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Địa chỉ</td>
    </thead>
    <%
    if(listKH!=null) 
        for(int i=0;i<listKH.size();i++){
        
    %>
    <tr>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listKH.get(i).getId() %></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listKH.get(i).getTen() %></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listKH.get(i).getSoID() %></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listKH.get(i).getKieuID() %></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listKH.get(i).getDienthoai() %></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listKH.get(i).getEmail() %></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listKH.get(i).getDiachi() %></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><button onclick="document.location='GDTimtour.jsp'">Chọn</button></td>
    </tr>
    <%} %>
        </table>
    </body>
</html>
