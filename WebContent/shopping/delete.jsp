<%@page import="oracle.Oracle"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String sec = request.getParameter("sec");

Oracle ora = new Oracle();
ora.dbConnection();

String sql = "delete from cart where cart_seq='"+sec+"'";
ora.insert(sql);

ora.dbClose();
response.sendRedirect("cart.jsp");
%>
</body>
</html>