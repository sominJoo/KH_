<%@page import="java.util.Arrays"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- jstl core 사용위함 --%>
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
	<c:if test="${Integer.parseInt(no1) > Integer.parseInt(no2)}">
		${no1} > ${no2}
	</c:if>		
	<c:if test="${Integer.parseInt(no1) < Integer.parseInt(no2)}">
		${no1} &lt; ${no2}
	</c:if>
	<c:if test="${no1 eq no2}">
		${no1} = ${no2}
	</c:if>	
	
	
	<c:set var ="rnd" value="<%= new Random().nextInt(100) %>"/>
	<c:choose>
		<c:when test="${rnd%5 ==0 }"> 인형</c:when>
		<c:when test="${rnd%5 ==1 }"> 권총</c:when>
		<c:otherwise>꽝</c:otherwise>
	</c:choose>
	<script>
		console.log(${rnd});
	</script>



	<h2>반복문</h2>
	<c:forEach var="i" begin="1" end="6" step="1">
	<%--<c:forEach var="i" begin="6" end="1" step="-1"> --%>
	<%--javax.servlet.jsp.JspTagException: 'step' <= 0 오류 발생 --%>
		<h${i}>hello world${i}</h${i}>
	</c:forEach>
	
	
	<%--javax.servlet.jsp.JspTagException: 'step' <= 0 오류 해결 --%>
	<c:forEach var="i" begin="1" end="6" step="1">
		<h${7-i}>hello world${7-i}</h${7-i}>
	</c:forEach>
	
	
	<c:set var="list" value='<%= Arrays.asList("길동","신사임당","순신") %>'/>
	<c:forEach items="${list}" var="name">
	<p>${name}</p>
	</c:forEach>
</body>
</html>