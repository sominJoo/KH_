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
 * Servlet implementation class BoardCommentDelServlet
 */
@WebServlet("/board/boardCommentDelete")
public class BoardCommentDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BoardService boardService = new BoardService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//1.사용자 입력값
			int no = Integer.parseInt(request.getParameter("no"));
			int boardNo = Integer.parseInt(request.getParameter("boardNo"));
			BoardComment boardComment= new BoardComment(no, 0, null, null, boardNo, 0, null);
			//2.업무로직
			int result =boardService.deleteBoardComment(boardComment);
			System.out.println("result@Delservlet" + result);
			
			//3.redriect
			response.sendRedirect(request.getContextPath()+"/board/boardView?no="+boardNo);
			
		}catch(Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

}
