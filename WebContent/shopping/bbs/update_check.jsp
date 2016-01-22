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
String id = request.getParameter("id");
String seq = request.getParameter("seq");
String name = request.getParameter("username");
String title = request.getParameter("title");
String list = request.getParameter("list");

Oracle ora = new Oracle();
ora.dbConnection();
ora.insert("update bbs set name='"+name+"',title='"+title+"',list='"+list+"' where seq="+seq+" ");
ora.dbClose();
response.sendRedirect("list.jsp?id="+id);
%>

</body>
</html>