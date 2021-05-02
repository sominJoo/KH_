<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String life="is very short";
	pageContext.setAttribute("life", life);
	pageContext.setAttribute("movie", "노인을 위한 나라는 없다.");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL</title>
</head>
<body>>
	<%--
		EL 객체는 map 형식.	- 저장된 객체를 출력하는것
		pageContext.setAttrivut("a", "aaa");
		=> ${pageScop.a} --> aaa
	
		...
		
		
	 --%>

	<h1>El Basic</h1>
	<%-- lifeCycle : pageScope - requestScope - sessionScope - applicationScope --%>
	<h2>SCOPE</h2>
	<p>${pageScope.life}</p>
	
	<p>${requestScope.coffee}</p>
	<p>${requestScope.serverTime}</p>
	<p>${requestScope.honngd}</p>
	<p>${requestScope.honngd.name}</p>
	
	<p>${requestScope.coffee}</p>
	
	<p>${sessionScope.book}</p>
	
	<p>${servletScope.app}</p>
	
	
	
	<%--
		Scope 생략 가능
		scope 생략시, pageScope - requestScope - sessionScope - applicationScope 순으로 모두 찾음
	--%>
	<h2>SCOPE 생략</h2>
	<p>${life}</p>
	<p>${coffee}</p>
	<p>${serverTime}</p>
	<p>${honngd}</p>
	<p>${coffee}</p>	
	<p>${book}</p>		
	<p>${app}</p>
	
	
	<%--page에서 먼저가져왔다면 뒤에 Scope는 가져오지 않음  --%>
	<p>${movie}</p>		
	<%-- Scope 명시 시 사용가능  --%>
	<p>${applicationScope.movie}</p>	
		
	<%-- 
		EL은 NullPointerException를 유발하지않는다.
		null인 경우에는 ""를 출력
	--%>
	<p>[${PERSON}]</p>	
	<br /><br />
	
	
	
	<h2>LIST</h2>
	<p>${list}</p>
	<p>${list[0]}</p>
	<p>${list[1]}</p>
	<p>${list[2]}</p>
	<p>${list[3]}</p>
	<br /><br />
	
	<h2>MAP</h2>
	<p>${map}</p>
	<p>${map.Dr.zang}</p> <%-- 헷갈리는 문법. 안나옴  --%>
	<p>${map["Dr.zang"]}</p>
	<br /><br />
	
	<%-- 파라미터값으로 넘겨받은 panam, pcount 출력 --%>
	<h1>PARAM</h1>
	<p>${param.pname}</p>
	<p>${param.pcount}</p> 
	<p>${paramValues.option[0]}</p>	<%-- option은 1개 이상이므로 list--%>
	<p>${paramValues.option[1]}</p>
	<br /><br />
	
	
	<h1>COOKIE</h1>
	<p>${cookie.JSESSIONID}</p>
	<p>${cookie.JSESSIONID.value}</p> 
	<br /><br />
	
	<%-- header 모든 정보 출력가능 --%>
	<h1>HEADER</h1>
	<p>${header.referer}</p>
	<p>${header.accept}</p>
	<p>${header['user-agent']}</p> 
	<br /><br />	
	
	
	<%--
		getPage()
		getRequest()
			getMethod : get|post
			getContextPaht :  action/
		getResponse
		getSession
		getServletcontext
		getErrorData
		
		==> get(property명)을 제외
	 --%>
	<h1>PageContext</h1>
	<p>${pageContext.request.method}</p>
	<p>${pageContext.request.contextPath}</p>
	<p>${pageContext.session}</p>
	<p>${pageContext.errorData}</p>
	<p>${pageContext.servletContext}</p>
</body>
</html>