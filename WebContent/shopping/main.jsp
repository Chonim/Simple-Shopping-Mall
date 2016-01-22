<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link type="text/css" href="img/shopping.css" rel="stylesheet" />
<title>Hard Rock Cafe에 오신것을 환영합니다.</title>
<script type="text/javascript">

function OverFunction() {
	document.black800000_img.src = "img/black800000s.png";
}
function OutFunction() {
	document.black800000_img.src = "img/black800000.png";
}
/* 
$(document).ready(function(){
	$("#btn").click(function(){
	var vname = $("#name").val();
	var vemail = $("#email").val();
	if(vname=='' && vemail=='')
	{
	alert("Please fill out the form");
	}
	else if(vname=='' && vemail!==''){alert('Name field is required')}
	else if(vemail=='' && vname!==''){alert('Email field is required')}
	else{
	$.post("jquery_post.php", //Required URL of the page on server
	{ // Data Sending With Request To Server
	name:vname,
	email:vemail
	},
	function(response,status){ // Required Callback Function
	alert("*----Received Data----*\n\nResponse : " + response+"\n\nStatus : " + status);//"response" receives - whatever written in echo of above PHP script.
	$("#form")[0].reset();
	});
	}
	});
	});
	 */
</script>
</head>
<body class="body">
<% 
	/*String id = (String)session.getAttribute("id");
	out.print(id);
	if(session.isNew())
		session.setAttribute("id", id);
	else
		session.invalidate();*/
	
%>
	<center>
	<jsp:include page="include/top.jsp"
							flush="false" />
	<hr width='1000' size='2' noshade>
		<a href="main.jsp"><img alt="로고" src="img/logo.jpg" width="250"></a>
	<hr width='1000' size='2' noshade>

		<form action="to_buy.jsp">
			<table width="1024" border="0">
				<tr>
					<td colspan="4" class="dyna">
				</tr>
				<tr height="300">
				
					<td rowspan="2" class="dyna"><a href="bbs/list.jsp"><br /><br /><br /><br /><img src="img\red10000.png"></a><br /><br /><br /><br /><br />
					<input class="bold" type="checkbox" name="item" value="red10000" >빨간
						10000<select name="red10000"><option>0</option><option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option></select>
					
					<br /></td>
					<td rowspan="2" class="dyna"><a href="bbs/list.jsp"><br /><br /><br /><br /><img src="img\white20000.png"></a><br /><br /><br /><br /><br />
					<input type="checkbox" name="item" value="white20000">하얀
						20000<select name="white20000"><option>0</option><option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option></select>
							<br /></td>
					<td rowspan="2" class="dyna"><a href="bbs/list.jsp"><br /><br /><br /><br /><img src="img\blue30000.png"></a><br /><br /><br /><br /><br />
					<input type="checkbox" name="item" value="blue30000">파란
						30000<select name="blue30000"><option>0</option><option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option></select></td>
					<td rowspan="2" class="dyna"><a href="bbs/list.jsp"><br /><br /><br /><br /><img src="img\wine40000.png"></a><br /><br /><br /><br /><br />
					<input type="checkbox" name="item" value="wine40000">와인
						40000<select name="wine40000"><option>0</option><option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option></select></td>
				</tr>
				<tr>
				</tr>
				<tr height="300">
					<td rowspan="2" class="dyna"><a href="bbs/list.jsp"><br /><br /><br /><br /><img src="img\brown50000.png"></a><br /><br /><br /><br /><br />
					<input type="checkbox" name="item" value="brown50000">갈색
						50000<select name="brown50000"><option>0</option><option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option></select></td>
					<td rowspan="2" class="dyna"><a href="bbs/list.jsp"><br /><br /><br /><br /><img src="img\sky100000.png"></a><br /><br /><br /><br /><br />
					<input type="checkbox" name="item" value="sky100000">하늘
						100000<select name="sky100000"><option>0</option><option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option></select></td>
					<td rowspan="2" class="dyna"><a href="bbs/list.jsp"><br /><br /><br /><br /><img src="img\black500000.png"></a><br /><br /><br /><br /><br />
					<input type="checkbox" name="item" value="black500000">검은1
						500000<select name="black500000"><option>0</option><option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option></select></td>
					<td rowspan="2" class="dyna"><a href="bbs/list.jsp" onmouseover="OverFunction()" onmouseout="OutFunction()"><br /><br /><br /><br /><img src="img\black800000.png" name="black800000_img"></a><br /><br /><br /><br /><br />
					<input type="checkbox" name="item" value="black800000">검은2
						800000<select name="black800000"><option>0</option><option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option></select></td>
				</tr>
				<tr>
				</tr>
			</table>
			<input type="submit" name="buy" value="구매하기">
			<input type="submit" value="장바구니" onclick="form.action='to_cart.jsp';">
		</form>
	<div id="footer">
	<br/><br/><br/><br/><br/>
	<img src="img\footer.gif" />
	</div>
	</center>
</body>
</html>