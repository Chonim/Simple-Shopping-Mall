<%@page import="oracle.Oracle"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" session="true"
    pageEncoding="EUC-KR"%>
<jsp:include page="include/top.jsp"
							flush="false" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css" href="img/shopping.css" rel="stylesheet" />
<title>�Խ��� ����</title>
</head>
<body>
<% 
	String id = (String)session.getAttribute("id");
	out.print(id);
%>
	<center>
		<hr width='600' size='2' noshade>
		<h2>��ٱ���</h2>
		<a href='main.jsp'><button>���ư���</button></a>&nbsp;&nbsp;&nbsp;
		<a href='buy.jsp'><button>�����ϱ�</button></a>  
		<hr width='600' size='2' noshade>
		<br />
		<br />

		<table width='700' border='1'>
			<tr>
				<th width='10%'>��ȣ</th>
				<th width='10%'>����</th>
				<th width='30%'>��ǰ��</th>
				<th width='20%'>����</th>
				<th width='10%'>����</th>
				<th width='10%'>����</th>
			</tr>

			<%
				String[] items = request.getParameterValues("item");

				Oracle ora = new Oracle();
				ora.dbConnection();
				ResultSet rs = ora.select("select * from cart order by cart_seq");
				
				int total = 0;
				while (rs.next()) {
					int sec = rs.getInt("cart_seq");
					String itemName = rs.getString("item_name");
					int price = rs.getInt("price");
					int amount = rs.getInt("amount");
					total += price;
			%>

			<tr class="dyna">
				<td align='center'><%=sec%></td>
				<td align='center'><img src="img/<%=itemName%>.png" width="100"></td>
				<td align='center'><%=itemName%></td>
				<td align='center'><%=price %></td>
				<td align='center'><%=amount%></td>
				<td align='center'><a href="delete.jsp?sec=<%=sec%>">X</a></td>
			</tr>
			<%	
				}
				%>
			
			<tr>
				<td colspan="6" align='center'><b><% out.print("�� �����ݾ� : " + total); %></b></td> 
			</tr>
			
			<%
				
				ora.dbClose();
			%>
		</table>
	</center>
</body>
</html>