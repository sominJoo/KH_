<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax - json </title>
<script src="<%= request.getContextPath() %>/js/jquery-3.6.0.js"></script>
<style>
table {
	border-collapse : collapse;
    border: 1px solid black;
	margin : 5px;
}
th, td {
    border: 1px solid black;
}
table img {
	width : 150px;
}
</style>
</head>
<body>
	<h1>JSON</h1>
	<div>
		<button type="button" id="btn">실행</button>
	</div>
	
	<div>
		<input type="search" id="searchId"  placeholder="id검색"/>
		<button type="button" id="btn-search-id">검색</button>
	</div>
	
	<div>
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id"/></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name"/></td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
					<button id="btn-save-member">회원가입</button>
				</td>
			</tr>
		</table>
	</div>
	
	<div class="wrapper"></div>
	
	
<script>
$("#btn-save-member").click(function(){
	$.ajax({
		url : "<%= request.getContextPath()%>/json",
		method : "POST",
		data : {
			id: $("[name=id]").val(),
			name : $("[name=name]").val()
		},
		success : function(data){
			console.log(data);	
			
		},
		error : function(xhr, status, err){
			console.log(xhr, status, err);
		}
	});
	
})
$("#btn-search-id").click(function(){
	$.ajax({
		url : "<%= request.getContextPath()%>/json",
		data : {
			searchId: $("#searchId").val()
		},
		success : function(data){
			console.log(data);	
			if(data != null){
				var $table = $("<table> </table>");
				$table.append(`<tr><th>아이디 </th> <td>\${data.id} </td></tr>`)
					.append(`<tr><th>이름</th> <td>\${data.name} </td></tr>`)
					.append(`<tr><th>프로필 </th> <td><img src="<%=request.getContextPath()%>/images/\${data.profile}"/> </td></tr>`);
				$(".wrapper").html($table);
			}
			else{
				alert("해당 id는 존재하지 않습니다.");
				$("#searchId").select();
			}
			
		},
		error : function(xhr, status, err){
			console.log(xhr, status, err);
		}
	});
});

$("#btn").click(function(){
	$.ajax({
		url : "<%= request.getContextPath()%>/json",
		success : function(data){
			console.log(data);		//c-> s일때 서버에서 자바->json c에서는 json을 받았지만 jquery에서 자동적으로 자바스크립트 객체로 변환해줌
			
			//table 데이터로 가공하고
			var $members = $(data);
			var $table = $("<table> </table>");
			$members.each(function(index, member){
				var $tr = $("<tr> </tr>");
				$tr.append("<td> " + member.id+ "</td>")
					.append("<td> " + member.name+ "</td>")
					.append("<td><img src = '<%=request.getContextPath()%>/images/" +member.profile + "'/></td>")
					.appendTo($table);
			});
			$table.appendTo($(".wrapper"));
		},
		error : function(xhr, status, err){
			console.log(xhr, status, err);
		}
	});
});

</script>
</body>
</html>