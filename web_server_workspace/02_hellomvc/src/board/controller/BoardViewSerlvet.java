package board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.exception.BoardException;
import board.model.service.BoardService;
import board.model.vo.Board;
import board.model.vo.BoardComment;
import common.MvcUtils;

/**
 * Servlet implementation class BoardViewSerlvet
 */
@WebServlet("/board/boardView")
public class BoardViewSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BoardService boardService = new BoardService();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//1.사용자 입력값
			int boardNo  = 0; 
			try {
				boardNo = Integer.parseInt(request.getParameter("no"));
			} catch(NumberFormatException e) {
				throw new BoardException("유효한 게시글 번호가 아닙니다.", e);
			}
			
			//2. 업무로직
			Board board = boardService.selectBoard(boardNo);
			if(board == null) {
				throw new BoardException("해당 게시글이 존재하지 않흡니다.");
			}
			
			//xss 공격방지
			board.setTitle(MvcUtils.escapeHtml(board.getTitle()));
			board.setContent(MvcUtils.escapeHtml(board.getContent()));

			//댓글 가져오기
			List<BoardComment> commentList = boardService.selectBoardCommemtList(boardNo);
			
			
			// \n 개행문자를 <br/>태그로 변경
			board.setContent(MvcUtils.convertLineFeedToBr(board.getContent()));
			
			//3. jsp forwarding
			request.setAttribute("board", board);
			request.setAttribute("commentList", commentList);
			request.getRequestDispatcher("/WEB-INF/views/board/boardView.jsp").forward(request, response);
		}catch(Exception e) {
			//로깅
			e.printStackTrace();
			//관리자 이메일 알람
			//다시 예외를 던져 was가 정한 에러페이지에세 응답 ㅇ메세지를 작성
			throw e;
		}
		
	}

}
