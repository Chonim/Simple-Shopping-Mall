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

// �̰� �־�߰ڴ�... �̹� �����ϸ� ���� ������ �ʵ��� ��������� ���� ���Ͽ� ����
ora.insert("delete from temp where temp_seq='"+sec+"'");

ora.dbClose();

// �����Ǹ鼭 �� �������� ��. ���̺��� �ٽ� ����
response.sendRedirect("buy_confirm.jsp");
%>
</body>
</html>