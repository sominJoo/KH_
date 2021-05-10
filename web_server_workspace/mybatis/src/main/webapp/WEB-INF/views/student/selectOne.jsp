<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mybatis 실습</title>
<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.js"></script>
<style>
div#student-container{text-align:center;}
table.tbl-student{margin:0 auto;border:1px solid; border-collapse:collapse;}
table.tbl-student th,table.tbl-student td{
	border:1px solid;
	padding:5px;
	line-height: 2em; /*input태그로 인해 cell이 높이가 길어져 border 두줄현상방지 */
}
table.tbl-student th{text-align:right;}
table.tbl-student td{text-align:left;}
table.tbl-student tr:last-of-type td:first-child{text-align:center;}
</style>
<c:if test="${not empty msg}">
<script>
alert("${msg}");
<c:remove var="msg" scope="session"/>
</script>
</c:if>
</head>
<body>
	<div id="student-container">
		<h2>학생정보 검색</h2>
		<p>총 학생수는 ${requestScope.total}명입니다.</p>
		<form action ="${pageContext.request.contextPath}/student/selectOne.do">
			<table class="tbl-student">
				<tr>
					<th>학생번호</th>
					<td>
						<input type="number" name="no" required/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="검색" />
					</td>
				</tr>
			</table>
		</form>
			
		<hr />	
		
		<c:if test="${not empty requestScope.student}">
			<h1>학생 정보 수정</h1>
			<form 
				name="studentUpdateFrm"
				action="${pageContext.request.contextPath}/student/updateStudent.do"
				method="POST">
				<table class="tbl-student">
					<tr>
						<th>학생번호</th>
						<td>
							<input type="number" name="no" value="${ requestScope.student.no}" required readonly/>
						</td>
					</tr>
					<tr>
						<th>학생이름</th>
						<td>
							<input type="text" name="name" value="${ requestScope.student.name}" required/>
						</td>
					</tr>
					<tr>
						<th>학생전화번호</th>
						<td>
							<input type="tel" name="tel" value="${ requestScope.student.tel}" required/>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="수정" />
							<input type="button" value="삭제" onclick="deleteStudent();" />
						</td>
					</tr>
				</table>
			</form>
		</c:if>	
		<c:if test="${not empty param.no && empty requestScope.student}">
			<p> 해당학생은 존재하지 않습니다.</p>
		</c:if>	
		
		
		<hr />
		<h1>학생 정보 조회(Map)</h1>
		<form name ="ajaxStudentSearchFrm">
			<table class="tbl-student">
				<tr>
					<th>학생번호</th>
					<td>
						<input type="number" name="no" required/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="검색" />
					</td>
				</tr>
			</table>
		</form>
		
		<form name="studentDelFrm" action="${pageContext.request.contextPath}/student/deleteStudent.do"  method="POST">
			<input type="hidden" name="no" value="${param.no}" />			
		</form>
		<script>
		$(document.ajaxStudentSearchFrm).submit((e) => {
			e.preventDefault(); // 폼제출방지
			//화살표함수 안에서는 this가 event.target객체가 아니다.
			var no = $("[name=no]", e.target).val();
			console.log(no);
			
			$.ajax({
				url: "${pageContext.request.contextPath}/student/selectOneStudentMap.do",
				data: {no}, // {no: 3}
				success: data => {
					console.log(data);

					var $table = $("<table class='tbl-student'></table>");
					if(data){
						$table
							.append("<tr><th>학생번호</th><td>" + data.no + "</td></tr>")
							.append("<tr><th>이름</th><td>" + data.name + "</td></tr>")
							.append("<tr><th>전화번호</th><td>" + data.tel + "</td></tr>")
							.append("<tr><th>등록일</th><td>" + data.regDate + "</td></tr>")
							.insertAfter($(e.target));
					}
					else {
						alert("조회한 학생은 존재하지 않습니다.");
					}
				},
				error: (xhr, statusText, err) => {
					console.log(xhr, statusText, err);
				}
			});
		});
		
		function deleteStudent(){
			if(confirm("정말 삭제하시겠습니까?")){
				$(document.studentDelFrm).submit();
			}

		}
		</script>	
	</div>
</body>
</html>
