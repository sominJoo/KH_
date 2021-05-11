<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	//사용자 요청값(String[])을 contains메소드사용을 위해 List로 변환.
	String[] jobCodeArr = request.getParameterValues("jobCode");
	List<String> jobCodeList = 
				jobCodeArr != null ? 
						Arrays.asList(jobCodeArr) : 
							null;
	pageContext.setAttribute("jobCodeList", jobCodeList);

	String[] deptIdArr = request.getParameterValues("deptId");
	List<String> deptIdList = 
				deptIdArr != null ? 
						Arrays.asList(deptIdArr) : 
							null;
	pageContext.setAttribute("deptIdList", deptIdList);
				
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mybatis실습</title>
<style>
div#emp-container{text-align:center;}
table.tbl-emp{
	margin:0 auto;
	border:1px solid; 
	border-collapse:collapse;
}
table.tbl-emp th{
	border:1px solid;
	padding:5px;
	background:lightseagreen;
}
div#search-container{
	padding:15px 0;
}
table.tbl-emp td{
	border:1px solid;
	padding:5px;
}
input#btn-search { width: 350px; background: lightslategray; color: white; box-shadow: 0px 3px 15px grey; }
table#tbl-search { margin:0 auto; }
table#tbl-search th,table#tbl-search td {padding:5px 15px;}
table#tbl-search td {text-align:left;}
</style>
</head>
<body>
<div id="emp-container">
	<h2>사원정보 </h2>
	<form name="empSearchFrm" >
		<p>
			<h3>검색</h3>
			<input type="button" value="초기화" />
		</p>
		<table id="tbl-search">
			<!-- 직급조회 -->
			<tr>
				<th>직급</th>
				<td>
					<c:forEach items="${jobList}" var="job" >
						<input type="checkbox" name="jobCode" 
						id ="${job.jobCode}" value="${job.jobCode}" ${jobCodeList.contains(job.jobCode) ? 'checked' : ''}/>
						<label for="${job.jobCode}"><c:out value="${job.jobName}"/></label>
					</c:forEach>
				</td>
			</tr>
			<!-- 실습문제 : 부서조회(직급조회와 모두일치하는 사원 )
				input:checkbot+label 은 3개마다 개행
				(심화)인턴사원도 조회가능
			-->
			<tr>
				<th>부서</th>
				<td>
					<c:forEach var="dept" items="${requestScope.deptList}" varStatus="vs">
						<input type="checkbox" name="deptId" 
						id ="${dept.deptId}" value ="${dept.deptId}" ${deptIdList.contains(dept.deptId) ? 'checked' : ''}/>
						<label for="${dept.deptId}"><c:out value="${dept.deptTitle}"/></label>
						<c:if test="${vs.count % 3 == 0}"><br/></c:if>
					</c:forEach>
					<!-- 인턴 -->
					<input type="checkbox" name="deptId" 
					id ="D0" value ="D0" ${deptIdList.contains('D0') ? 'checked' : ''}/>
					<label for="D0">인턴</label>
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" id="btn-search" value="검색"  />
				</th>
			</tr>
		</table>
	</form>
	
	<table class="tbl-emp">
		<tr>
			<th></th><!-- 1부터 넘버링 처리 -->
			<th>사번</th>
			<th>사원명</th>
			<th>주민번호</th><!--뒷6자리는 ******처리-->
			<th>이메일</th>
			<th>전화번호</th>
			<th>부서코드</th>
			<th>직급코드</th>
			<th>급여레벨</th>
			<th>급여</th><!--원화기호, 세자리마다 콤마표시-->
			<th>보너스율</th><!--percent로 표시-->
			<th>매니져 사번</th>
			<th>입사일</th><!--날짜형식 yyyy/MM/dd-->
			<th>퇴사여부</th>
		</tr>
		<!-- 조회된 데이터가 있는 경우와 없는 경우를 분기처리 하세요 -->
		<c:if test="${ empty list}">
		<tr>
			<td colspan="14"> 조회된 사원이 없습니다. </td>
		</tr>
		</c:if>
		<c:if test="${not empty list}">
			<c:forEach items="${list}" var ="list" varStatus="i">
				<c:set var ="emp_no" value="${list.EMP_NO}"/>
				<c:set var="no" value="${fn:substring(emp_no, 0,  fn:length(emp_no)-7) }" />
				<tr>
					<td><c:out value="${i.index}"/></td><!-- 1부터 넘버링 처리 -->
					<td>
						<a href="${pageContext.request.contextPath}/emp/updateEmp.do?empId=${list.EMP_ID}"><c:out value="${list.EMP_ID}"/></a>
					</td>
					<td><c:out value="${list.EMP_NAME}"/></td>
					<td><c:out value="${no}"/>*******</td>
					<td><c:out value="${list.EMAIL}"/></td>
					<td><c:out value="${list.PHONE}"/></td>
					<td><c:out value="${list.DEPT_CODE}"/></td>
					<td><c:out value="${list.JOB_CODE}"/></td>
					<td><c:out value="${list.SAL_LEVEL}"/></td>
					<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${list.SALARY}" /></td>	<!--원화기호, 세자리마다 콤마표시-->
					<td><c:out value="${list.BONUS*100}"/>%</td> <!--percent로 표시-->
					<td><c:out value="${list.MANAGER_ID}"/></td>
					<td><fmt:formatDate value="${list.HIRE_DATE}" pattern="yy/MM/dd"/></td> <!--날짜형식 yyyy/MM/dd-->
					<td><c:out value="${list.QUIT_YN}"/></td>
				</tr>
			
			</c:forEach>
		</c:if>
	</table>
</div>

</body>
</html>
