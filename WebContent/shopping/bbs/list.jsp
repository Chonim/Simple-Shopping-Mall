<%@page import="oracle.Oracle"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" session="true"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판 내용</title>
<link type="text/css" href="../img/shopping.css" rel="stylesheet" />
</head>
<body>
<jsp:include page="../include/top.jsp"
							flush="false" />
<% 
	String id = (String)session.getAttribute("id");
	out.print(id);
%>
	<center>
		<hr width='600' size='2' noshade>
		<h2>게시판</h2>
		<a href='insert.jsp?id=<%=id%>'><button>글쓰기</button></a> &nbsp;&nbsp;&nbsp; 
		<a href='..\main.jsp'><button>처음화면</button></a>
		<hr width='600' size='2' noshade>
		<br />
		<br />
		
		<table width='700' border='1'>
			<tr>
				<th width='10%'>번호</th>
				<th width='20%'>글쓴이</th>
				<th width='30%'>글 제목</th>
				<th width='10%'>날짜</th>
				<th width='10%'>삭제</th>
			</tr>

			<%
				Oracle ora = new Oracle();
				ora.dbConnection();
				ResultSet rs = ora.select("select * from bbs order by seq");

				while (rs.next()) {
					int seq = rs.getInt("seq");
					String name = rs.getString("name");
					String title = rs.getString("title");
					Date date = rs.getDate("r_date");
					
			%>
			<tr class="dyna">
				<td align='center'><%=seq%></td>
				<td align='center'><%=name%></td>
				<td align='center'><a href='content.jsp?id=<%=id%>&seq=<%=seq%>&name=<%=name%>&title=<%=title%>'><%=title%></a></td>
				<td align='center'><%=date%></td>
				<td align='center'><a href="delete.jsp?seq=<%=seq%>">X</a></td>
			</tr>
			<%	
				}
				
				ora.dbClose();
			%>
		</table>
		
		
	</center>
</body>
</html>