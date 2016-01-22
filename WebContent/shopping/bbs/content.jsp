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
	<center>
		<form action="update.jsp">
			
			<% String id = request.getParameter("id"); %>

			<%
			Oracle ora = new Oracle();
			ora.dbConnection();
			
			String seq = request.getParameter("seq");
			String name = "";
			String title = "";
			String list = "";
			
			ResultSet rs = ora.select("select * from bbs where seq='"+seq+"'");

			while (rs.next()) {
				name = rs.getString("name");
				title = rs.getString("title");
				list = rs.getString("list");
			%>

			<table width="800" border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td align="center">이름</td>
					<td colspan="3"><%=name %></td>
				</tr>
				<tr>
					<td align="center">제목</td>
					<td colspan="3"><%=title %></td>
				</tr>
				<tr height="300">
					<td align="center">내용</td>
					<td colspan="3"><%=list %></td>
				</tr>
				<%	
				}
				
				ora.dbClose();
			%>
			</table>
			<input type="hidden" name="id" value="<%=id %>">
			<input type="hidden" name="seq" value="<%=seq %>">
			<input type="hidden" name="name" value="<%=name %>">
			<input type="hidden" name="title" value="<%=title %>">
			<input type="hidden" name="list" value="<%=list %>">
			
		<input type="submit" value="수정">
		<input type="submit" value="뒤로" onclick="form.action='list.jsp';">
		<input type="submit" value="삭제" onclick="form.action='delete.jsp?seq=<%=seq%>';"> 
		</form>

	</center>
</body>
</html>