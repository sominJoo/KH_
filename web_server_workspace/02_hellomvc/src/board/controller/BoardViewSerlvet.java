package board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;

/**
 * Servlet implementation class BoardViewSerlvet
 */
@WebServlet("/board/boardView")
public class BoardViewSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BoardService boardService = new BoardService();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.사용자 입력값
		int boardNo = Integer.parseInt(request.getParameter("no"));
		
		//2. 업무로직
		Board board = boardService.selectBoard(boardNo);
		
		//3. jsp forwarding
		request.setAttribute("board", board);
		request.getRequestDispatcher("/WEB-INF/views/board/boardView.jsp").forward(request, response);
	}

}
