<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="게시판" name="title"/>
</jsp:include>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<style>
/*글쓰기버튼*/
input#btn-add{float:right; margin: 0 0 15px;}
tr[data-no]{
	cursor: pointer;
}
 .ui-autocomplete {
     max-height: 300px;
     overflow-y: auto; /* prevent horizontal scrollbar */
     overflow-x: hidden;
 }
 
 /* IE 6 doesn't support max-height
  * we use height instead, but this forces the menu to always be this tall
  */
 html .ui-autocomplete {
     height: 300px;
 }

</style>
<script>
function goBoardForm(){
	location.href = "${pageContext.request.contextPath}/board/boardForm.do";
}

$(() => {
	$("tr[data-no]").click(e => {
		//화살표함수안에서는 this는 e.target이 아니다.
		console.log(e.target); // td 태그 클릭 -> 부모 tr로 이벤트 전바(bubbling)

		var $tr = $(e.target).parent();
		var no = $tr.data("no");
		location.href="${pageContext.request.contextPath}/board/boardDetail.do?no="+no;

	});

    $( "#searchTitle" ).autocomplete({
      source: function(request,response){
		$.ajax({
			url : "${pageContext.request.contextPath}/board/boardfind.do",
			data : {title : request.term},
			success : (data)=>{
			 	var arr = $.map(data, function(item){
			 		return {
			 			label : item.title,	//노출되는 값
			 			value : item.title	//내부적으로 처리될 값
			 			,no : item.no
			 		}
			 	});
				response(arr);
			}
				
		})
      },
     select : function(event, selected){
   		console.log(selected.item.no);
   		var no  = selected.item.no;
		location.href="${pageContext.request.contextPath}/board/boardDetail.do?no="+no;

         
     },
     focus : function(event, ui){
         
     }
   });
});
</script>
<section id="board-container" class="container">
	<input type="button" value="글쓰기" id="btn-add" class="btn btn-outline-success" onclick="goBoardForm();"/>	
	
	<input type="search" placeholder="제목 검색" id="searchTitle" class="form-control col-sm-3 d-inline"/>
	<table id="tbl-board" class="table table-striped table-hover">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>첨부파일</th> <!-- 첨부파일 있을 경우, /resources/images/file.png 표시 width: 16px-->
			<th>조회수</th>
		</tr>
		<c:forEach items="${list}" var="board">
		<tr data-no="${board.no}">
			<td>${board.no}</td>
			<td>${board.title}</td>
			<td>${board.memberId}</td>
			<td><fmt:formatDate value="${board.regDate}" pattern="yy-MM-dd"/></td>
			<td>
				<c:if test="${board.hasAttachment}">
				<img src="${pageContext.request.contextPath}/resources/images/file.png" width="16px" alt="" />
				</c:if>
			</td>
			<td>${board.readCount}</td>
		</tr>
		</c:forEach>
		
	</table>
	
	${pageBar}
	
</section> 
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
