<%@page import="member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg = (String)request.getAttribute("msg");
	String loc = (String)request.getAttribute("loc");  // 로그인 실패 시 현재 페이지  path return. 로그인 성공 시 null
	Member member  = (Member)session.getAttribute("loginMember");
	System.out.println("msg@header.jsp = "+msg);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello MVC</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css" />
<script type="text/javascript" src ="<%=request.getContextPath() %>/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
<% if(msg != null){ %>
	alert("<%= msg%>"); 
<% } %>
<% if(loc != null){ %>
	location.href ="<%= loc%>";
<% } %>
$(function(){
	//로그인폼 유효성검사
	$('#loginFrm').submit(function(){
		var $memberId = $(memberId);
		var $password = $(password);
		if( (/^.{4,}/).test($memberId.val()) == false){
			alert("유효한 아이디를 입력하세요");
			return false;
		}
		if( (/^.{4,}/).test($password.val()) == false){
			alert("유효한 비밀번호를 입력하세요");
			return false;
		}
	});
});
</script>
</head>
<body>
	<div id="container">
		<header>
			<h1>Hello MVC</h1>
			
			<!-- 로그인폼 시작 -->
			<div class="login-container">
			<%if(member == null) { %>
				<form id="loginFrm" action="<%=request.getContextPath() %>/member/login" method="post">
					<table>
						<tr>
							<td><input type="text" name="memberId" id="memberId" placeholder="아이디"  tabindex="1"></td>
							<td><input type="submit" value="로그인" tabindex="3"></td>
						</tr>
						<tr>
							<td><input type="password" name="password" id="password" placeholder="비밀번호" tabindex="2"></td>
							<td></td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="checkbox" name="saveId" id="saveId" />
								<label for="saveId">아이디저장</label>&nbsp;&nbsp;
								<input type="button" value="회원가입">
							</td>
						</tr>
					</table>
				</form>
				<!-- 로그인폼 끝-->
			<%} else { %>	
				<table id ="login">
					<tr>
						<td> <%= member.getMemberName() %>님 안녕하세요 </td>
					</tr>
					<tr>
						<td>
							<input type="button" value="내정보 보기">
							<input type="button" value="로그아웃">
						</td>
					</tr>					
				</table>
			<% } %>
			</div>
			<!-- 메인메뉴 시작 -->
			<nav>
				<ul class="main-nav">
					<li class="home"><a href="<%= request.getContextPath() %>">Home</a></li>
					<li class="notice"><a href="#">공지사항</a></li>
					<li class="board"><a href="#">게시판</a></li>
				</ul>
			</nav>
			<!-- 메인메뉴 끝-->
		</header>
		
		<section id="content">