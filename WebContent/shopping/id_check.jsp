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

if (id.length() < 5) {
	%><font color="red" size="2">ID는 5글자 이상이여야 합니다.</font><%
} else {
	%><font color="blue" size="2">사용 가능한 아이디입니다.</font><%
}

%>

</body>
</html>