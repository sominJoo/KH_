package board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.BoardComment;

/**
 * Servlet implementation class BoardCommentInsertServlet
 */
@WebServlet("/board/boardCommentInsert")
public class BoardCommentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BoardService boardService = new BoardService();
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//1. 사용자 입력값 처리
			int boardNo = Integer.parseInt(request.getParameter("boardNo"));
			String writer = request.getParameter("writer");
			String content = request.getParameter("content");
			int commentLevel = Integer.parseInt(request.getParameter("commentLevel"));
			int commentRef = Integer.parseInt(request.getParameter("commentRef"));
			BoardComment bc = new BoardComment(0, commentLevel, writer, content, boardNo, commentRef, null);
			
			//2. 업무로직
			int result = boardService.insertBoardComment(bc);

			//3. 사용자 피드백
//			request.getSession().setAttribute("msg","댓글 등록 성공" );
			response.sendRedirect(request.getContextPath()+"/board/boardView?no="+boardNo);
			
		}catch(Exception e) {
			e.printStackTrace();
			throw e;
		}

	}

}
