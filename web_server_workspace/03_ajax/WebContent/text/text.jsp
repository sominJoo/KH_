<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax - text</title>
<script src="<%= request.getContextPath() %>/js/jquery-3.6.0.js"></script>
<style>
table {
	border-collapse : callase;
	border :1px, solid, #000;
	margin : 5px;
}
th, td {
	border :1px, solid, #000;
}
table img {
	width : 150px
}
</style>
</head>
<body>
	<h1>text</h1>
	<input type="button" value="실행" id="btn1"/>
	<div class="wrapper"></div>
	
	<hr />
	<h2>csv</h2>
	<input type="button" value="실행" id="btn2" />
	<div class="container"></div>
<script>
$(btn2).click(function(){
	$.ajax({
		url: "<%= request.getContextPath() %>/csv",
		method : "GET",
		success: function(data){
			console.log(data);
			var $table = $("<table> </table>");
			var members = data.split("\n");
			members = members.slice(0,members.length-1);	// 마지막 요소  ""를 제거
			$.each(members, function(index, member){
				console.log(index, member);
				var arr = member.split(", ");
				console.log( arr[2]);
				var tr = "<tr>";
				tr += "<td>" + arr[0] + "</td>";
				tr += "<td>" + arr[1] + "</td>";
				tr += "<td><img src='<%= request.getContextPath() %>/images/" + arr[2] + "'/></td>";				
				tr += "</tr>";
				
				$table.append(tr);
			})
			$(".container").html($table);
		},
		error: function(xhr, status, error){
			console.log(xhr, status, error);
		}
	});
});



$(btn1).click(function(){
	$.ajax({
		url: "<%= request.getContextPath() %>/text",
//		data : "name=podo&num=1234",	//직렬화된 형태
		data : {
			name  :"strawberry",
			num : 1234,
			flag : false
		},
		method: "POST", // 기본값
		dataType: "text", // 응답데이터형식 text | html | xml | json
		beforeSend: function(){
			// 전송전 실행 콜백함수
			console.log("beforeSend call!");
		},
		success: function(data){
			// 요청 성공시 실행 콜백 함수, 매개인자로 응답 message 리턴
			console.log("success call!");
			console.log(data);
			$(".wrapper").html(data);
		},
		error: function(xhr, status, error){
			// 요청 오류시 실행 콜백 함수			
			console.log("error call!");
			console.log(xhr, status, error);
		},
		complete: function(){
			// 요청 성공/오류 상관없이 무조건 마지막에 호출되는 콜백함수
			console.log("complete call!");
		}
	});
});
</script>	
</body>
</html>