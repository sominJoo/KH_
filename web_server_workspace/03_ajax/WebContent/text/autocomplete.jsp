<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Autocomplete - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</head>
<body>
 
<div class="ui-widget">
  <label for="name">우리반 이름 : </label>
  <input id="name">
</div>

<h1 class="selected"></h1>


<script>

$("#name").autocomplete({
  source: function(request, response){
	  $.ajax({
	  	url: "<%= request.getContextPath() %>/autocomplete",
		data: {
			 search: request.term
		},
		success: function(data){
		 	console.log(data);
		 	var arr= data.split("\n");
		 	arr.splice(arr.length -1, 1);
		 	//map : 기존 배열을 가지고 가공하여 새로운 배열을 만들어냄 return값이 있음
		 	arr = $.map(arr, function(name){
		 		return {
		 			label : name,	//노출되는 값
		 			value : name	//내부적으로 처리될 값
		 		}
		 	});
		 	console.log(arr);
		 	//콜백 함수 호출
		 	response(arr);
		},
		error: function(xhr, status, error){
			console.log(xhr, status, error);
		},
	  });
  },
  //선택한 사항의 event와 선택 사항의 item 확인 가능
  select : function(event,selected){
	console.log(event);
	console.log(selected);
	$(".selected").html(selected.item.label);
  }
});


</script>
 
</body>
</html>