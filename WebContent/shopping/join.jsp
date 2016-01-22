<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
<script type="text/javascript">
var xhr = null;

function getXMLHttpRequest() {
	if(window.ActiveXObject) {
		try {
			return new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e1) {
			try {
				return new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e2) {
				return null;
			}
		}
	} else if (window.XMLHttpRequest) {
		return new XMLHttpRequest();
	} else {
		return null;
	}
}

function requestHello() {
	param = form1.id.value;
	URL = "id_check.jsp?id=" + param;
	xhr = getXMLHttpRequest();
	xhr.onreadystatechange = responseHello;
	xhr.open("GET", URL, true);
	xhr.send(null);
}

function responseHello() {
	if(xhr.readyState == 4) {
		if (xhr.status == 200) {
			var str = xhr.responseText;
			document.getElementById("message").innerHTML = str;
		} else {
			alert("Fail : " + xhr.status);
		}
	}
}

function numberCheck() {
	
	var num;
	var char;
	var numcheck;
	if(window.event) {
		num = event.keyCode;
	}
	char = String.fromCharCode(num);
	numCheck = /\d/;
	return numCheck.test(char);
	
	/* var phone = document.getElementById('phone'); */
	alert(phone);
	alert("fail");
}
</script>
</head>
<body>
	<form name = "form1" action="join_check.jsp" method="get">
	<center>
	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<table border="0" cellpadding="10" cellspacing="0" bgcolor="#ECF6CE">
			<tr height="40">
				<td>아이디</td>
				<td colspan="3"><input type="text" name="id" size="15" onkeyup="requestHello()"></td>
			</tr>
			<tr height="10">
				<td colspan="3"><div id="message"></div>
			</tr>
			<tr height="50">
				<td>비밀번호</td>
				<td colspan="3"><input type="password" name="password" size="15"></td>
			</tr>
			<tr height="50">
				<td>비밀번호 확인</td>
				<td colspan="3"><input type="password" name="password_confirm" size="15"></td>
			</tr>
			<tr height="50">
				<td>이름</td>
				<td colspan="3"><input type="text" name="name" size="15"></td>
			</tr>
			<tr height="40">
				<td>전화번호</td>
				<td colspan="3"><input type="text" id="phone" name="phone" size="15" onkeydown="return numberCheck(event)"></td>
			</tr>
			<tr height="10">
				<td colspan="3"><div><font color="red" size="2">숫자만 입력 가능</font></div>
			</tr>
			<tr height="50">
				<td>주소</td>
				<td colspan="3"><input type="text" name="address" size="15"></td>
			</tr>
			<tr height="50">
				<td><input type="submit" value="가입"></td>
				<td><input type="submit" value="취소" onclick="form.action='main.jsp';"></td>
			</tr>
		</table>
	</center>
	</form>
</body>
</html>