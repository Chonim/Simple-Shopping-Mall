<%@ page language="java" contentType="text/html; charset=EUC-KR" session="true"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div align="right">
<% 
String id = (String)session.getAttribute("id");
	
if (id==null||id.equals("null")) { %>
	
	<a href="login.jsp">�α���</a>&nbsp;&nbsp;
	<a href="join.jsp">ȸ������</a> 
	
	<%
} else {
	
 %>
 <%=id %> �� �ȳ��ϼ��� &nbsp;
 <a href="D:\workspace EE\1110\WebContent\shopping\cart.jsp">��ٱ���<img alt="īƮ" src="D:\workspace EE\1110\WebContent\shopping\img\cart.png" width="12"></a> &nbsp;
 <a href="D:\workspace EE\1110\WebContent\shopping\myinfo.jsp">�� ��������</a> &nbsp;
 <a href="D:\workspace EE\1110\WebContent\shopping\include/logout.jsp">�α׾ƿ�</a>
 <% } 
 %>
 
</div>
</body>
</html>