<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<%
    String username = (String)request.getParameter("username");
    String password = (String)request.getParameter("password");
    Thanhvien tv = new Thanhvien();
    tv.setUsername(username);
    tv.setPassword(password);
    NhanvienDAO dao = new NhanvienDAO();
    boolean kq = dao.kiemtraDangnhap(tv);
    if(kq){
        session.setAttribute("nhanvien", tv);
        response.sendRedirect("view//GDChinhNV.jsp");
    }else
        response.sendRedirect("index.jsp?err=fail");
%>