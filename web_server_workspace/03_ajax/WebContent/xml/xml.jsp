<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax - xml</title>
<script src="<%= request.getContextPath() %>/js/jquery-3.6.0.js"></script>
<style>
table {
	border-collapse : collapse;
	border :1px, solid, #000;
	margin : 5px;
}
th, td {
	border :1px, solid, #000;
}
table img {
	width : 150px;
}
</style>
</head>
<body>
	<h1>XML</h1>
	<button type="button" id="btn">실행</button>
	<button type="button" id="btn-product-sample">상품 xml 가져오기</button>
	
	<script>
	$("#btn-product-sample").click(function(){
		$.ajax({
			url :"<%=request.getContextPath() %>/xml/sample-product.xml",
			success : function(data){
				console.log(data);				
				var $root = $(data).find(":root");
				var $Products = $root.find("Product");
				
				var $ul = $("<ul> </ul>");
				$Products.each(function(index, Product){
					var Name =  $(Product).children("Name").text();
					var Price = $(Product).children("Price").text();

					$ul.append("<li>" + Name +"(" +Price + ")" + "</li>");
				});
				$ul.appendTo($("body"));
			},
			error : function (xhr, status,err) {
				console.log(xhr, status,err);
			}
		});
	});
	
	$(btn).click(function(){
		$.ajax({
			url : "<%=request.getContextPath() %>/xml",
			dataType : "xml",
			success : function (data) {
				console.log(data);
				var $root = $(data).find(":root");
				console.log( $root);			//data로 받은 members 객체
				
				var $members = $root.find("member");	// members 하위 member 객체
				var $table = $("<table> </table>");
				$members.each(function(index, member){
					console.log(index, member);
					var id = $(member).children("id").text();
					var name = $(member).children("name").text();
					var profile = $(member).children("profile").text();
					
					var $tr = $("<tr> </tr>");
					$tr.append("<td>" + (index +1) + "</td>")
						.append("<td><img src = '<%=request.getContextPath()%>/images/" +profile + "'/></td>")
						.append("<td>" + id +"</td>")
						.append("<td>" + name +"</td>")
						.appendTo($table); 	//table에 추가
						
				});
				$("body").append($table);
			},
			error : function (xhr, status,err) {
				console.log(xhr, status,err);
			}
		});
	});
	</script>
</body>
</html>