<%@page import="oracle.Oracle"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	alert("회원가입이 되었습니다. 짝짝짝");
</script>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		String pwConfirm = request.getParameter("password_confirm");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");

		Oracle ora = new Oracle();

		ora.dbConnection();

		// 빈칸이 있으면 경고표시
		if (id.equals("") || pw.equals("") || name.equals("") || phone.equals("") || address.equals("")) {
	%>
	<script>
		alert("빈칸을 모두 입력해 주세요.");
		history.back();
	</script>
	<%
		} else {
			// p, pwconfirm 다르면 경고표시
			if (!pw.equals(pwConfirm)) {
	%>
	<script>
		alert("비밀번호가 다릅니다.");
		history.back();
	</script>
	<%
		} else {
				String sql = "insert into members values(sec.nextval,'" + id + "','" + pw + "','" + name + "','"
						+ phone + "','" + address + "','" + 5 + "')";
				ora.insert(sql);

				ora.dbClose();
				response.sendRedirect("main.jsp");
			}
		}
	%>

</body>
</html>