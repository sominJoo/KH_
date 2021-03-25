<%--
** ctrl + shift + f => 자동들여쓰기
	jsp 주석
	jsp : java + html
	jsp의 모든 자바코드 <% %>는 모두 서버단에서 처리되고, 그 결과만 html에 반영된다.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
	
<%
	//jsp scriptlet 자바공간이다. 자바 코딩 가능

	//사용자 입력값 가져오기
	//request, response에서 선업없이 접근 가능
	//1.사용자 입력값 담기
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	String animal = request.getParameter("animal");
	String[] foodArr = request.getParameterValues("food");

	System.out.println("name = " + name);
	System.out.println("color = " + color);
	System.out.println("animal = " + animal);
	System.out.println("foodArr = " + Arrays.toString(foodArr));
	
	//저장된 속성 가져오기
	String recommendation = request.getAttribute("recommendation").toString();
	System.out.println("recommendation@jsp = " + recommendation);
%>



<!DOCTYPE html>
<html>
<head>
<title>취향 검사 결과</title>
<style>
.recommendation {
	font-size: 2em;
	color: lime;
	text-decoration: underline;
}
</style>
</head>
<body>
	<h1>개인 취향 검사 결과 JSP</h1>
	<p><%= name %>님의 취향 검사 결과는</p>
	<p><%= color %>을 좋아합니다.</p>
	<p>좋아하는 동물은 <%= animal %>입니다</p>
	<p>좋아하는 음식은 <%= Arrays.toString(foodArr) %>입니다</p>
	<hr />
	<p class='recommendation'>오늘은 <%=recommendation %> 어떠세요?</p>
</body>
</html>
