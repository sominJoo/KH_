<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String life="is very short";
	pageContext.setAttribute("life", life);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL</title>
</head>
<body>>
	<h1>El Basic</h1>
	<%-- lifeCycle : pageScope - requestScope - sessionScope - applicateScope --%>
	<h2>scope</h2>
	<p>${pageScope.life}</p>
	
	<p>${requestScope.coffee}</p>
	<p>${requestScope.serverTime}</p>
	<p>${requestScope.honngd}</p>
	<p>${requestScope.coffee}</p>
	
	<p>${sessionScope.book}</p>
	
	<p>${servletScope.app}</p>
	
	
	
	<%-- scope 생략시, pageScope - requestScope - sessionScope - applicateScope --%>
	<h2>scope 생략</h2>
	<p>${life}</p>
	<p>${coffee}</p>
	<p>${serverTime}</p>
	<p>${honngd}</p>
	<p>${coffee}</p>	
	<p>${book}</p>	
	<p>${app}</p>


	
	<%-- 
		EL은 NullPointerException를 유발하지않는다.
		null인 경우에는 ""를 출력
	--%>
	<p>[${movie}]</p>
	
	
	<h2>list</h2>
	<p>${list}</p>
	<p>${list[0]}</p>
	<p>${list[1]}</p>
	<p>${list[2]}</p>
	<p>${list[3]}</p>
	
	
	<h2>map</h2>
	<p>${map}</p>
	<p>${map.Dr.zang}</p> <%--안나옴 --%>
	<p>${map["Dr.zang"]}</p>
	
	
	
	<%--
		getPage()
		getRequest()
			getMethod : get|post
			getContextPaht :  action/
		getResponse
		getSession
		getServletcontext
		getErrorData
	 --%>
	<h1>pageContext</h1>
	<p>${pageContext.request.method}</p>
</body>
</html>