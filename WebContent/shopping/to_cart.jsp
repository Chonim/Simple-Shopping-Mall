<%@page import="oracle.Oracle"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% 
	String id = (String)session.getAttribute("id");
	out.print(id);
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
	<center>
		<%

		%><a href="main.jsp?id=<%=id%>"><br>뒤로</a>
		<%
				int red10000 = Integer.parseInt(request.getParameter("red10000"));
				int white20000 = Integer.parseInt(request.getParameter("white20000"));
				int blue30000 = Integer.parseInt(request.getParameter("blue30000"));
				int wine40000 = Integer.parseInt(request.getParameter("wine40000"));
				int brown50000 = Integer.parseInt(request.getParameter("brown50000"));
				int sky100000 = Integer.parseInt(request.getParameter("sky100000"));
				int black500000 = Integer.parseInt(request.getParameter("black500000"));
				int black800000 = Integer.parseInt(request.getParameter("black800000"));

				Oracle ora = new Oracle();
				String items[] = request.getParameterValues("item");

				ora.dbConnection();

				if (red10000 > 0) {

					String sql = "insert into cart values(cart_seq.nextval,'red10000','" + red10000 * 10000 + "','"
							+ red10000 + "')";
					ora.insert(sql);

				}
				if (white20000 > 0) {

					String sql = "insert into cart values(cart_seq.nextval,'white20000','" + white20000 * 20000 + "','"
							+ white20000 + "')";
					ora.insert(sql);

				}
				if (blue30000 > 0) {

					String sql = "insert into cart values(cart_seq.nextval,'blue30000','" + blue30000 * 30000 + "','"
							+ blue30000 + "')";
					ora.insert(sql);

				}
				if (wine40000 > 0) {

					String sql = "insert into cart values(cart_seq.nextval,'wine40000','" + wine40000 * 40000 + "','"
							+ wine40000 + "')";
					ora.insert(sql);

				}
				if (brown50000 > 0) {

					String sql = "insert into cart values(cart_seq.nextval,'brown50000','" + brown50000 * 50000 + "','"
							+ brown50000 + "')";
					ora.insert(sql);

				}
				if (sky100000 > 0) {

					String sql = "insert into cart values(cart_seq.nextval,'sky100000','" + sky100000 * 100000 + "','"
							+ sky100000 + "')";
					ora.insert(sql);

				}
				if (black500000 > 0) {

					String sql = "insert into cart values(cart_seq.nextval,'black500000','" + black500000 * 500000
							+ "','" + black500000 + "')";
					ora.insert(sql);

				}
				if (black800000 > 0) {

					String sql = "insert into cart values(cart_seq.nextval,'black800000','" + black800000 * 800000 + "','"
							+ black800000 + "')";
					ora.insert(sql);
				}
				ora.dbClose();
				response.sendRedirect("cart.jsp");
			
		%>
		
		<% 
	id = (String)session.getAttribute("id");
	out.print(id);
%>
	</center>
</body>
</html>