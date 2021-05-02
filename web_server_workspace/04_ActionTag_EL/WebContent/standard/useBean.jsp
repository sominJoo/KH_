<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 
	해당 스코프에서 id와 동일한 속성명으로 저장된 객체를 가져온다. 
	존재하지 않으면, 해당타입의 객체를 하나 생성한다.
	
	
	Property 접근방식
	-getter : getter에서 get을 제외하고 소문자로 시작하는 이름
	-setter : setter에서 set을 제외하고 소문자로 시작하는 이름
--%>    

<jsp:useBean id="honngd" class="com.kh.person.model.vo.Person" scope="request"/>
<jsp:useBean id="sinsa" class="com.kh.person.model.vo.Person"></jsp:useBean>

<jsp:setProperty property="id" value="ssinsa" name="sinsa"/>
<jsp:setProperty property="name" value="ssinsa_1" name="sinsa"/>
<jsp:setProperty property="gender" value="여" name="sinsa"/>
<jsp:setProperty property="age" value="23" name="sinsa"/>
<jsp:setProperty property="married" value="true" name="sinsa"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean</title>
<style>
	table,th, td{
		border : 1px solid #000;
		padding 5px;
	}
	table{
		margin-bottom: 20px;
	}
</style>
</head>
<body>
	<h1>useBean</h1>
	<table>
		<tr>
			<th>id</th>
			<%-- action tag는 절대 client에 전달되지않는다. --%>
			<%-- property속성값은 vo객체의 getter에서 get을 제외하고 소문자로 시작하는 나머지 이름 --%>
			<%-- name은 setProperty의 id값 --%>
			<td><jsp:getProperty property="id" name="honngd" /></td>
		</tr>
		<tr>
			<th>name</th>
			<td><jsp:getProperty property="name" name="honngd" /></td>
		</tr>
		<tr>
			<th>gender</th>
			<td><jsp:getProperty property="gender" name="honngd" /></td>
		</tr>
		<tr>
			<th>age</th>
			<td><jsp:getProperty property="age" name="honngd" /></td>
		</tr>
		<tr>
			<th>married</th>
			<td><jsp:getProperty property="married" name="honngd" /></td>
		</tr>
	</table>

	<table>
		<tr>
			<th>id</th>
			<%-- action tag는 절대 client에 전달되지않는다. --%>
			<%-- property속성값은 vo객체의 getter에서 get을 제외하고 소문자로 시작하는 나머지 이름 --%>
			<%--jsp:getProperty의 name 값은  jsp:useBean의 id 값 --%>
			<td><jsp:getProperty property="id" name="sinsa" /></td>
		</tr>
		<tr>
			<th>name</th>
			<td><jsp:getProperty property="name" name="sinsa" /></td>
		</tr>
		<tr>
			<th>gender</th>
			<td><jsp:getProperty property="gender" name="sinsa" /></td>
		</tr>
		<tr>
			<th>age</th>
			<td><jsp:getProperty property="age" name="sinsa" /></td>
		</tr>
		<tr>
			<th>married</th>
			<td><jsp:getProperty property="married" name="sinsa" /></td>
		</tr>
	</table>

</body>
</html>