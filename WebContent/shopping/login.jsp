<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
</head>
<body>
<body>
	<form action="login_check.jsp">
	<center>
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>아이디</td>
				<td colspan="3"><input type="text" name="id" size="15"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td colspan="3"><input type="password" name="password" size="15"></td>
			</tr>
			<tr>
				<td><input type="submit" value="로그인"></td>
				<td><a href="join.jsp">회원가입</a></td>
			</tr>
		</table>
	</center>
	</form>
</body>
</html>