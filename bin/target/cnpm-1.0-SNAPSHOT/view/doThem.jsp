<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<%
    if(Integer.parseInt(request.getParameter("soluongve")) <= 0){
        response.sendRedirect("GDNhapsoluongve.jsp?err=fail");
    }
    else{
        response.sendRedirect("GDHoadon.jsp");
    }
    
%>
