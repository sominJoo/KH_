<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax</title>
</head>
<body>
	<h1> Hello Ajax </h1>


	<h2>text</h2>
	<ul>
		<li><a href="<%= request.getContextPath() %>/text/text.jsp">text</a></li>
		<li><a href="<%= request.getContextPath() %>/text/autocomplete.jsp">auto_complete</a></li>
	</ul>
	
	<h2>html</h2>
	<ul>
		<li><a href="<%= request.getContextPath() %>/html/html.jsp">html</a></li>
	</ul>
	
	<h2>xml</h2>
	<ul>
		<li><a href="<%= request.getContextPath() %>/xml/xml.jsp">xml</a></li>
	</ul>
	
	
	<h2>json</h2>
	<ul>
		<li><a href="<%= request.getContextPath() %>/json/json.jsp">json</a></li>
	</ul>
</body>
</html>