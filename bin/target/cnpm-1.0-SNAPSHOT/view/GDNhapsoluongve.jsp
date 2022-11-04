<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nhập số lượng vé</title>
        <style>
            .center {
                margin-left: auto;
                margin-right: auto;
            }
        </style>
           
    </head>
    <%
    if(request.getParameter("err") !=null &&
        request.getParameter("err").equalsIgnoreCase("fail")){
%>
<h4 style="color: tomato; text-align: center">Số lượng vé phải lớn hơn 0!</h4>
<%
    }
%> 
    <body>
        <h2 style="text-align:center;">Nhập số lượng vé</h2>
        <form name="nhapsoluongve" action="doThem.jsp" method="post">
    <table class="center" border="0">
        <tr>
            <td>Số lượng vé:</td>
            <td><input type="text" name="soluongve" id="soluongve" required /></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Hoàn thành" /></td>
        </tr>
    </table>
    
    </body>
</html>
