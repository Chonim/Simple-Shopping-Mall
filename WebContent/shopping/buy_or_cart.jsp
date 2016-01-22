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
	// 포워딩 테스트
	String viewPageURI = null;

	// 값 가져오기
	String items[] = request.getParameterValues("item");
	String id = request.getParameter("id");
	String red10000 = request.getParameter("red10000");      
	String white20000 = request.getParameter("white20000");  
	String blue30000 = request.getParameter("blue30000");    
	String wine40000 = request.getParameter("wine40000");    
	String brown50000 = request.getParameter("brown50000");  
	String sky100000 = request.getParameter("sky100000");    
	String black500000 = request.getParameter("black500000");
	String black800000 = request.getParameter("black800000");
	
	request.getParameterNames();
	
	// buy냐 cart냐 확인
	String buy = request.getParameter("buy");
	String cart = request.getParameter("cart");

	if (buy!=null) {
		// response.sendRedirect("to_buy.jsp");
		%> 
		<jsp:forward page="to_buy.jsp">
		<% 
		viewPageURI = "to_buy.jsp";
	} else if (cart!=null) {
		// response.sendRedirect("to_cart.jsp");
		viewPageURI = "to_cart.jsp";
		%> 
		<jsp:forward page="display.jsp">
		<%
	}

%>
<jsp:forward page="<%= viewPageURI %>"/>
<jsp:params></jsp:params>
</body>
</html>