<%-- page 지시어 directive --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.text.SimpleDateFormat"%>
    
<%
	//jsp 스크립팅 요소 : scriptlet
	int sum =0;
	for(int i = 1 ; i<=10; i++){
		sum+=i;
	}
	Date today = new Date();
	SimpleDateFormat time = new SimpleDateFormat("HH:mm:ss");	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function(){
	var sum=0;
	for(var i=1 ;i<=10 ;i++)
		sum +=i;
	document.querySelector("#sum").innerText = sum;
	
	//날짜구하기
	var now  = new Date();
	var hours = now.getHours();
	var minutes = now.getMinutes();
	var seconds = now.getSeconds();
	document.querySelector("#time").innerText = hours + ':' + minutes +':' + seconds;
};


</script>
</head>
<body>
	<h1> Basic </h1>
	<!-- html주석은 client까지 전달된다.  -->
	<%-- html주석은 client까지 전달된다.  --%>
	<p> <%= sum %> </p> <%-- jsp 스크립팅 요소 --%>
	<p> client- side : javascrpit로 계산된 결과 : <span id= "sum"></span> </p>
	
	<hr/>
	<p>server-side : 현재시각 <%=time.format(today) %>  </p>
	<p>client-side : 현재시각  <span id= "time"> </span> </p>
	
</body>
</html>