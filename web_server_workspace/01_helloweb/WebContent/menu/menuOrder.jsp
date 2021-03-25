<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String main = request.getParameter("main_menu");
	String side = request.getParameter("side_menu");
	String drink = request.getParameter("drink_menu");
	String total = request.getAttribute("total").toString();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#main_menu{
		color : blue;
		font-size : 2em;
	}
	#side_menu{
		color: violet;
		font-size: 1.5em;
	}
	#drink_menu{
		color : lime;
	}
	#price{
		color : #964b00;
		font-size : 2em;
	}
</style>
</head>
<body>
	<h2>감사합니다.</h2>
	<span id = "main_menu"> <%= main %>, </span>
	<span id = "side_menu"> <%= side %>,</span>
	<span id = "drink_menu"> <%= drink %></span>을/를 주문하셨습니다.
	<br>총 결제금액은 
	<span id="price"><%= total %>원</span>입니다.
</body>
</html>