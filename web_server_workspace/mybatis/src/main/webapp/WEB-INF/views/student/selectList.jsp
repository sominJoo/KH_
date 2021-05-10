<%@page import="java.util.Map"%>
<%@page import="com.kh.mybatis.student.model.vo.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- jstl core 사용--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mybatis실습 - selectList</title>
<style>
div#student-container{text-align:center;}
table.tbl-student{margin:0 auto;border:1px solid; border-collapse:collapse;}
table.tbl-student th,table.tbl-student td{
	border:1px solid;
	padding:5px;
}
</style>
</head>
<body>
<div id="student-container">
	<h2>selectList</h2>
	<p>List&lt;Student>를 리턴</p>
	<table class="tbl-student">
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>등록일</th>
		</tr>
		<c:if test="${empty list }">
			<tr>
				<td colspan="4"> 등록학생이 존재하지 않습니다.</td>
			</tr>
		</c:if>
		
		<c:if test="${not empty list }">
			<c:forEach var="list" items="${requestScope.list}">
				<tr>
					<td><c:out value="${list.no}" /></td>
					<td><c:out value="${list.name}" /></td>
					<td><c:out value="${list.tel}" /></td>
					<td>
						<fmt:formatDate value="${list.regDate}" pattern="yy/MM/dd HH:mm"/>
					</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<hr />
	
	<p> List&lt;Map&lt;String, Object>>를 리턴</p>
	<table class="tbl-student">
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>등록일</th>
		</tr>
		<c:if test="${empty mapList}">
			<tr>
				<td colspan="4"> 등록학생이 존재하지 않습니다.</td>
			</tr>
		</c:if>
		
		<c:if test="${not empty mapList}">
			<c:forEach var="mapList" items="${requestScope.mapList}">
				<tr>
					<td><c:out value="${mapList.no}" /></td>
					<td><c:out value="${mapList.name}" /></td>
					<td><c:out value="${mapList.tel}" /></td>
					<td>
						<fmt:formatDate value="${mapList.regDate}" pattern="yy/MM/dd HH:mm"/>
					</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	
</div>
	
	
</body>
</html>
