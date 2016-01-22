<%@page import="java.sql.ResultSet"%>
<%@page import="oracle.Oracle"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" session="true"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Oracle ora = new Oracle();
		ora.dbConnection();

		// 칸에 넣은 ID/PW
		String idConfirm = request.getParameter("id");
		String pwConfirm = request.getParameter("password");

		ResultSet rs = ora.select("select * from members where id='" + idConfirm + "'");

		// DB에서 가져온 ID/PW
		String id = "";
		String pw = null;
		String name = null;

		while (rs.next()) {
			id = rs.getString("id");
			pw = rs.getString("pw");
			name = rs.getString("name");
		}
		try {
			if(id.equals(idConfirm)&&pw.equals(pwConfirm)) {
				
					session.setAttribute("id", id);
				
				
				response.sendRedirect("main.jsp");// 로그인 성공
			} else if (id.equals(idConfirm)) {
				out.println("<script>alert(\"비밀번호 불일치\"); history.back(); </script>");
			} else {
				out.println("<script>alert(\"아이디 불일치\"); history.back(); </script>");
			}
		} catch (Exception e) {
			response.sendRedirect("login.jsp");
		}
		ora.dbClose();
		
	%>

</body>
</html>