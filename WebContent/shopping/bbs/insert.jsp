<%@page import="java.sql.ResultSet"%>
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
	
	Oracle ora = new Oracle();
	ora.dbConnection();
	
	ResultSet rs = ora.select("select name from members where id='"+id+"'");
	
	String name=null;
	while(rs.next()) {
		name = rs.getString("name");
	}
	
	%>
	<center>
		<form action="insert_check.jsp?id=<%=id%>&name=<%=name%>">
				<input type="hidden" name="id" value="<%=id %>">
			<table border=1>
				<tr>
					<td>�̸�: <input type="text" name="username" value="<%=name%>" readonly="readonly"><br />
					</td>
				</tr>
				<tr>
					<td>����: <input type="text" name="title"><br />
					</td>
				</tr>
				<tr>
					<td>����: <textarea name="list" rows="5"></textarea>
					</td>
				</tr>
			</table>
			
			<% ora.dbClose(); %>
			
			<!-- ��¥ -->

			<br /> <input type="submit" value="����">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="�ʱ�ȭ"><br>
		</form>
	</center>
</body>
</html>