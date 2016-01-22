<%@page import="java.util.Calendar"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Date"%>
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

// 이름으로 넣기
String id = request.getParameter("id");
String name = request.getParameter("username");
String title = request.getParameter("title");
String list = request.getParameter("list");

// 날짜
DecimalFormat df = new DecimalFormat("00");
Calendar currentCalendar = Calendar.getInstance();
//현재 날짜 구하기
String strYear = df.format(currentCalendar.get(Calendar.YEAR));
String strMonth = df.format(currentCalendar.get(Calendar.MONTH) + 1);
String strDay = df.format(currentCalendar.get(Calendar.DATE));
String date = strYear + "/" + strMonth + "/" + strDay;
out.print(date);

Oracle ora = new Oracle();
ora.dbConnection();


String sql = "insert into bbs values(seq.nextval,'"+name+"','"+title+"','"+list+"','"+ date +"')";
ora.insert(sql);

ora.dbClose();
response.sendRedirect("list.jsp?id="+id);
%>

</body>
</html>