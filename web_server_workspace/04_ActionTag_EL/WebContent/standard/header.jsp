<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- <jsp:include> 태그안의 <jsp:param>의 name값 --%>
<title>${param.title}</title>
<style>
header, section, footer{
	border:1px solid #000;
	margin: 10px 0;
}
section {
	height :600px;
}
</style>
</head>
<body>
	<header>
		<h1>${param.title}</h1>
	</header>
	<section>