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

		// ĭ�� ���� ID/PW
		String idConfirm = request.getParameter("id");
		String pwConfirm = request.getParameter("password");

		ResultSet rs = ora.select("select * from members where id='" + idConfirm + "'");

		// DB���� ������ ID/PW
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
				
				
				response.sendRedirect("main.jsp");// �α��� ����
			} else if (id.equals(idConfirm)) {
				out.println("<script>alert(\"��й�ȣ ����ġ\"); history.back(); </script>");
			} else {
				out.println("<script>alert(\"���̵� ����ġ\"); history.back(); </script>");
			}
		} catch (Exception e) {
			response.sendRedirect("login.jsp");
		}
		ora.dbClose();
		
	%>

</body>
</html>