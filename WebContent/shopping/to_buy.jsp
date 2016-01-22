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
			// 테이블 생성
				Oracle ora = new Oracle();
				ora.dbConnection();
				
				ora.insert("create table temp(temp_seq number, item_name varchar(20), price number, amount number)");
				ora.insert("create sequence temp_seq start with 1 increment by 1");
				// 구매목록  가져오기
				
				String items[] = request.getParameterValues("item");
				String id = request.getParameter("id");
				
				
				// out.print(items[1]);

				if (items == null) {
					out.print("선택하신 상품이 없습니다.");

				} else {
					/* for (int i = 0; i < items.length; i++) {
						out.print(items[i]);
					} */
	
					int red10000 = Integer.parseInt(request.getParameter("red10000"));
					int white20000 = Integer.parseInt(request.getParameter("white20000"));
					int blue30000 = Integer.parseInt(request.getParameter("blue30000"));
					int wine40000 = Integer.parseInt(request.getParameter("wine40000"));
					int brown50000 = Integer.parseInt(request.getParameter("brown50000"));
					int sky100000 = Integer.parseInt(request.getParameter("sky100000"));
					int black500000 = Integer.parseInt(request.getParameter("black500000"));
					int black800000 = Integer.parseInt(request.getParameter("black800000"));

					if (red10000 > 0) {
					/* if (red10000 > 0 && items.) { */

						String sql = "insert into temp values(temp_seq.nextval,'red10000','" + red10000 * 10000 + "','"
								+ red10000 + "')";
						ora.insert(sql);

					}
					if (white20000 > 0) {

						String sql = "insert into temp values(temp_seq.nextval,'white20000','" + white20000 * 20000 + "','"
								+ white20000 + "')";
						ora.insert(sql);

					}
					if (blue30000 > 0) {

						String sql = "insert into temp values(temp_seq.nextval,'blue30000','" + blue30000 * 30000 + "','"
								+ blue30000 + "')";
						ora.insert(sql);

					}
					if (wine40000 > 0) {

						String sql = "insert into temp values(temp_seq.nextval,'wine40000','" + wine40000 * 40000 + "','"
								+ wine40000 + "')";
						ora.insert(sql);

					}
					if (brown50000 > 0) {

						String sql = "insert into temp values(temp_seq.nextval,'brown50000','" + brown50000 * 50000 + "','"
								+ brown50000 + "')";
						ora.insert(sql);

					}
					if (sky100000 > 0) {

						String sql = "insert into temp values(temp_seq.nextval,'sky100000','" + sky100000 * 100000 + "','"
								+ sky100000 + "')";
						ora.insert(sql);

					}
					if (black500000 > 0) {

						String sql = "insert into temp values(temp_seq.nextval,'black500000','" + black500000 * 500000
								+ "','" + black500000 + "')";
						ora.insert(sql);

					}
					if (black800000 > 0) {

						String sql = "insert into temp values(temp_seq.nextval,'black800000','" + black800000 * 800000 + "','"
								+ black800000 + "')";
						ora.insert(sql);
					}
					
					response.sendRedirect("buy_confirm.jsp");
					
				}
	%>
</body>
</html>