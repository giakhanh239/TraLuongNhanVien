<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tìm tour</title>
        <style>
            .center {
                margin-left: auto;
                margin-right: auto;
            }
        </style>
           
    </head>
    <%
        ArrayList<Tour> listTour = new ArrayList<>();
        if(request.getParameter("tennoiden")!=null && request.getParameter("ngaydi")!=null){
            TourDAO dao = new TourDAO();
            listTour = dao.getDSTour(request.getParameter("tennoiden"),request.getParameter("ngaydi"));
        }
    %>    
    <body>
        <h2 style="text-align:center;">Tìm tour</h2>
        <form name="timkiemkh">
    <table class="center" border="0">
        <tr>
            <td>Tên nơi đến:</td>
            <td><input type="text" name="tennoiden" id="tennoiden" required /></td>
        </tr>
        <tr>
            <td>Ngày đi:</td>
            <td><input type="text" name="ngaydi" id="ngaydi" required /></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Tìm kiếm" /></td>
        </tr>
    </table>
    </form>
        <table class="center" style="width: 70%;border: 1px solid black;border-collapse: collapse;">
    <thead>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Mã tour</td>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Tên tour</td>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Nơi xuất phát</td>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Nơi đến</td>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Lịch trình</td>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Mô tả</td>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Ngày đi</td>
        <th style="border: 1px solid black; padding:0 15px 0 15px;">Giá vé</td>
    </thead>
    <%
    if(listTour!=null) 
        for(int i=0;i<listTour.size();i++){
        
    %>
    <tr>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listTour.get(i).getId() %></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listTour.get(i).getTen() %></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listTour.get(i).getNoixuatphat()%></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listTour.get(i).getNoiden()%></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listTour.get(i).getLichtrinh()%></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listTour.get(i).getMota()%></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listTour.get(i).getNgaydi()%></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><%=listTour.get(i).getGiave()%></td>
        <td style="border: 1px solid black; padding:0 15px 0 15px;"><button onclick="document.location='GDNhapsoluongve.jsp'">Chọn</button></td>
    </tr>
    <%} %>
        </table>
    </body>
</html>
