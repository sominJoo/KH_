<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="no1" value="${param.num1}" scope="page"/>
<c:set var="no2" value="${param.num2}" scope="page"/>
<%-- <%
	Object no2 = 200;
	pageContext.setAttribute("no2", no2);
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Core Basics</title>
</head>
<body>
	<h1>JSTL</h1>
	<p>Jsp Standard Tag Library</p>
	<h1>Core Basics</h1>
	<p><c:out value="${no1}"/> ${no1}</p>
	<p><c:out value="${no2}"/> ${no2}</p>
	<p>[<c:out value="${no1 + no2}"/>] ${no1 + no2}</p> <!-- 산술연산에서 null으로 0으로 치환 -->
	
	<h2>조건식</h2>
	<c:if test="${no1 > no2}">
		${no1} > ${no2}
	</c:if>		
	<c:if test="${no1 < no2}">
		${no1} &lt; ${no2}
	</c:if>
		
	
</body>
</html>