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

<!-- ������ ���� ���� â -->

<%
String id = request.getParameter("id");
String seq = request.getParameter("seq");
String name = request.getParameter("name");
String title = request.getParameter("title");
String list = request.getParameter("list");
%>

<center>
		<form action="update_check.jsp?id=<%=id%>&name=<%=name%>">
			<input type="hidden" name="seq" value="<%=seq %>">
			<input type="hidden" name="id" value="<%=id %>">
			<table border=1>
				<tr>
					<td>�̸�: <input type="text" name="username" value="<%=name%>" readonly="readonly"><br />
					</td>
				</tr>
				<tr>
					<td>����: <input type="text" name="title" value="<%=title%>"><br />
					</td>
				</tr>
				<tr>
					<td>����: <input type="text" name="list" height="10"  value="<%=list%>">
					</td>
				</tr>
			</table>
			
			<!-- ��¥ -->

			<br /> <input type="submit" value="����">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="�ʱ�ȭ"><br>
		</form>
	</center>
</body>
</html>