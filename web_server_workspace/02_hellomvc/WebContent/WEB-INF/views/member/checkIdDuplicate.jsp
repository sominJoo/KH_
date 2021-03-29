<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String memberId = request.getParameter("memberId");
	boolean available =(boolean)request.getAttribute("available");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디중복검사</title>
<script src="<%=request.getContextPath()%>/js/jquery-3.6.0.js"></script>
<style>
div#checkId-container{text-align:center; padding-top:50px;}
span#duplicated{color:red; font-weight:bold;}
</style>
</head>
<body>
	<div id="checkId-container">
	<% if(available) { %>
		<%--아이디 사용가능 경우--%>
		<p> [<%= memberId %>]는 사용가능합니다. </p>
		<input type="button" value ="사용하기" onclick="setMemberId();"/>
	<%} else {%>
		<p> [<%= memberId %>]는 사용불가합니다. </p>
		<p> 새로운 아이디를 입력해주세요. </p>
		<br/>
		<form name ="checkIdDuplicateFrm">
			<input type="text" placeholder="아이디를 입력하세요" name="memberId">
			<input type="button" value="중복체크" onclick="checkIdDuplicate();">
		</form>
	<% } %>
	</div>
	<script>
	 function checkIdDuplicate(){
		var $memberId = $("[name=memberId]");
		if(/^[a-zA-Z0-9]{4,}$/.test($memberId.val()) == false){
			alert("유효한 아이디를 입력해주세요");
			$memberId.select();
			return;
		}
		
		//폼제출
		$frm = $(document.checkIdDuplicateFrm);
		//사용자 입력 id 값 frm에 셋팅
		$frm.find("[name=memberId]").val($memberId.val());
		$frm.attr("action", "<%= request.getContextPath() %>/member/checkIdDuplicate")
			.attr("method", "POST")
			.submit();
			
		}
	 
	 /**
	 사용가능한 아이디를 찾은 경우
	 1. 아이디를 부모 윈도우의 #memberId_ 대입
	 2. #idValid 값을 1로 변경
	 */
	 function setMemberId(){
		 //부모 윈도우 opener
		 var $frm = $(opener.document.memberEnrollFrm);
		 $frm.find("#memberId_").val('<%= memberId %>');
		 $frm.find("#idValid").val(1);
		 self.close();
	 }
	</script>
</body>
</html>
