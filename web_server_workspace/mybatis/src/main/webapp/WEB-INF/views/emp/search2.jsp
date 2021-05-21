<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
			<tr>
				<th colspan="2">
					<select name="searchType" >
						<option value="">검색타입</option>
						<option value="emp_id" ${param.searchType eq 'emp_id' ? 'selected' : ''}>사번</option>
						<option value="emp_name" ${param.searchType eq 'emp_name' ? 'selected' : ''}>사원명</option>
						<option value="email" <c:if test="${param.searchType eq 'email'}">selected</c:if>>이메일</option>
						<option value="phone" <c:if test="${param.searchType eq 'phone'}">selected</c:if>>전화번호</option>
					</select>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="search" name="searchKeyword" value="${param.searchKeyword}" />
				</th>
			</tr>
			<!-- 성별 radio 추가 -->
			<tr>
				<th>성별</th>
				<td>
					<input type="radio" name="gender" value='남' id="gender0" ${param.gender eq '남' ? 'checked' : ''}/>
					<label for="gender0">남</label>
					<input type="radio" name="gender" value='여' id="gender1" ${param.gender eq '여' ? 'checked' : ''}/>
					<label for="gender1">여</label>
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" id="btn-search" value="검색"  />
				</th>
			</tr>
			
			<!-- 급여기준 -->
			<tr>
				<th>급여</th>
				<td>
					<input type="number" name="salary" min="0" step="500000" value="${ param.salary }"/>
					<input type="radio" name="salaryCompare" id="salaryCompareGE" value='ge' ${ param.salaryCompare eq 'ge' ? 'checked' : '' }/>
					<label for="salaryCompareGE">이상</label>
					<input type="radio" name="salaryCompare" id="salaryCompareLE" value='le' ${ param.salaryCompare eq 'le' ? 'checked' : '' }/>
					<label for="salaryCompareLE">이하</label>
				</td>
			</tr>
			
			<!-- @실습문제 : 입사일 조회 -->
			<tr>
				<th>입사일</th>
				<td>
					<input type="date" name="hire_date" value=""/>	
					<input type="radio" name="hire_date_le_ge" id="hire_date_le" value='le'/>
					<label for="hire_date_le">이전</label>
					<input type="radio" name="hire_date_le_ge" id="hire_date_ge" value='ge'/>
					<label for="hire_date_ge">이후</label>
				</td>
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
					<td><c:out value="${list.EMP_ID}"/></td>
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