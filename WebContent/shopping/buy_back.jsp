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
				Oracle ora = new Oracle();
				ora.dbConnection();
				
				ora.insert("drop table temp");
				ora.insert("drop sequence temp_seq");
				
				ora.dbClose();

				response.sendRedirect("main.jsp");
			%>


</body>
</html>