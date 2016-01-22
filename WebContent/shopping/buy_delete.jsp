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
String sec = request.getParameter("sec");

Oracle ora = new Oracle();
ora.dbConnection();

// 이걸 넣어야겠다... 이미 존재하면 새로 만들지 않도록 삭제기능을 원래 파일에 넣음
ora.insert("delete from temp where temp_seq='"+sec+"'");

ora.dbClose();

// 삭제되면서 이 페이지로 들어감. 테이블을 다시 만듦
response.sendRedirect("buy_confirm.jsp");
%>
</body>
</html>