<%@page import="board.model.vo.BoardComment"%>
<%@page import="java.util.List"%>
<%@page import="board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<% Board b = (Board)request.getAttribute("board"); 
	boolean editable = 
	member != null && 
	(
			member.getMemberId().equals(b.getWriter())
	  || MemberService.ADMIN_ROLE.equals(member.getMemberRole())
	);
	List<BoardComment> commentList = (List<BoardComment>) request.getAttribute("commentList");
%>

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/board.css" />
<section id="board-container">
	<h2>게시판</h2>
	<table id="tbl-board-view">
		<tr>
			<th>글번호</th>
			<td><%=b.getNo() %></td>
		</tr>
		<tr>
			<th>제 목</th>
			<td><%=b.getTitle() %></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=b.getWriter() %></td>
		</tr>
		<tr>
			<th>조회수</th>
			<td><%=b.getReadCount() %></td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td>
				<%-- 첨부파일이 있을경우만, 이미지와 함께 original파일명 표시 --%>
				<% if(b.getAttach() !=null ) {%>
				<img alt="첨부파일" src="<%=request.getContextPath() %>/images/file.png" width=16px>
				<a href="<%= request.getContextPath() %>/board/fileDownload?no=<%= b.getNo() %>"><%= b.getAttach().getOriginalFilename() %></a>
				<% }%>
			</td>
		</tr>
		<tr>
			<th>내 용</th>
			<td><%=b.getContent()%></td>
		</tr>
		
		<% if(editable){ %>
		<tr>
			<th colspan="2">
				<input type="button" value="수정하기" onclick="updateBoard()">
				<input type="button" value="삭제하기" onclick="deleteBoard()">
			</th>
		</tr>
		<%} %>
	</table>
	
	<hr style="margin-top:30px;" />	
	<div class="comment-container">
        <div class="comment-editor">
            <form action="<%=request.getContextPath()%>/board/boardCommentInsert" method="post" name="boardCommentFrm">
                <input type="hidden" name="boardNo" value="<%= b.getNo() %>" />
                <input type="hidden" name="writer" value="<%= member !=null ? member.getMemberId() : "" %>" />
                <input type="hidden" name="commentLevel" value="1" />
                <input type="hidden" name="commentRef" value="0" />    
				<textarea name="content" cols="60" rows="3"></textarea>
                <button type="submit" id="btn-insert">등록</button>
            </form>
        </div>
        
		<% if(commentList != null && !commentList.isEmpty()){ %>
		<table id="tbl-comment">
		<% 
			for(BoardComment bc : commentList){ 
				boolean removable = member != null && 
						(
								member.getMemberId().equals(bc.getWriter())
						  || MemberService.ADMIN_ROLE.equals(member.getMemberRole())
						);
				if(bc.getCommentLevel() == 1){
				//댓글
		%>
			<tr class="level1">
				<td>
					<sub class="comment-writer"><%= bc.getWriter() %></sub>
					<sub class="comment-date"><%= bc.getRegDate() %></sub>
					<br />
					<%= bc.getContent() %>
				</td>
				<td>
					<button class="btn-reply" value="<%= bc.getNo() %>">답글</button>
					<% if(removable){ %>
					<button class="btn-delete" value="<%= bc.getNo() %>">삭제</button>
					<% } %>
				</td>
			</tr>
		<%   
				} else { 
				//대댓글
		%>
			<tr class="level2">
				<td>
					<sub class="comment-writer"><%= bc.getWriter() %></sub>
					<sub class="comment-date"><%= bc.getRegDate() %></sub>
					<br />
					<%= bc.getContent() %>
				</td>
				<td>
					<% if(removable){ %>
					<button class="btn-delete" value="<%= bc.getNo() %>">삭제</button>
					<% } %>
				</td>
			</tr>
		
		<% 	 
				} 
			}
		%>
		</table>
		<% } %>
	</div>
</section>

<% if(editable){ %>
	<form action ="<%=request.getContextPath() %>/board/boardDelete" name="boardDelFrm" method="POST">
		<input type="hidden" name ="no" value="<%= b.getNo()%>">
	</form>
	
	<script>
	function deleteBoard(){
		if(confirm("정말 삭제하시겠습니까?"))
			$(document.boardDelFrm).submit();		
	}
	function updateBoard(){
		location.href="<%= request.getContextPath() %>/board/boardUpdate?no=<%= b.getNo()%>";	
	}
	</script>	
<% }%>

<form action ="<%= request.getContextPath() %>/board/boardCommentDelete" name ="boardCommentDelFrm" >
	<input type="hidden" name ="no" />
	<input type="hidden" name ="boardNo" value="<%= b.getNo() %>" />
</form>
<script>
$("[name=content]").focus(function() {
	//로그인 여부 검사
	<% if(member == null){%>
	loginAlert();
	<% }%>
});

function loginAlert(){
	alert("로그인 후 이용하실 수 있습니다.");
	$("#memberId").focus();
}

$(document).on('submit', '[name=boardCommentFrm]', function(e){
//$(document.boardCommentFrm).submit(function(){
	//로그인 여부 검사
	<% if(member == null){%>
	loginAlert();
	return false;
	<% }%>
	
	//댓글내용
	var $content =$("[name=content]",e.target);
	if(/^(.|\n)+$/.test($content.val()) == false){
		alert("댓글 내용을 작성하세요");
		$content.focus();
		return false;
	}
});

$(".btn-reply").click(function(){
	<% if(member == null){ %>
	loginAlert();
	return;
	<% } %>
	
	//대댓글 작성폼 동적 생성
	var html = "<tr>";
	html += "<td colspan='2' style='display:none; text-align:left;'>";
	html += '<form action="<%=request.getContextPath()%>/board/boardCommentInsert" method="post" name="boardCommentFrm">';
	html += '<input type="hidden" name="boardNo" value="<%= b.getNo() %>" />';
	html += '<input type="hidden" name="writer" value="<%= member != null ? member.getMemberId() : "" %>" />';
	html += '<input type="hidden" name="commentLevel" value="2" />';
	html += '<input type="hidden" name="commentRef" value="' + $(this).val() + '" />';    
	html += '<textarea name="content" cols="60" rows="2"></textarea>';
	html += '<button type="submit" class="btn-insert-reply">등록</button>';
	html += '</form>';
	html += "</td>";
	html += "</tr>";
	
	var $trOfBtn = $(this).parent().parent();
	$(html)
		.insertAfter($trOfBtn)
		.children("td")
		.slideDown(800);
		
	
});

$('.btn-delete').click(function(){
	if(confirm("해당 댓글을 삭제하시겠습니까?")){
	 	var $frm = $(document.boardCommentDelFrm);
		var boardCommentNo = $(this).val();
		$frm.find("[name=no]").val(boardCommentNo);
		$frm.submit();
	}
});

</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
