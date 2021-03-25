<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="/jsp/header.jsp" %>
	<h1>
		contents
	</h1>
	<a href="/web/jsp/another.jsp"> another.jsp</a>
	<p> lorem </p>
	<p> <%= name %>님 반갑</p>
	<script>
	$("header").css("color", "deeppink");
	</script>
<%@ include file="/jsp/footer.jsp" %>