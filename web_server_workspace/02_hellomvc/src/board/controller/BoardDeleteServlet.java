package board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.model.service.BoardService;

/**
 * Servlet implementation class BoardDeleteServlet
 */
@WebServlet("/board/boardDelete")
public class BoardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//1. 사용자 입력값
			int no = Integer.parseInt(request.getParameter("no"));
			
			//2. 업무로직
			int result = new BoardService().deleteBoard(no);
			
			String msg = result>0 ? "삭제 성공" : "실패";
			HttpSession session = request.getSession();
			session.setAttribute("msg", msg);
			response.sendRedirect(request.getContextPath() +"/board/boardList");
		}catch(Exception e) {
			//예외 로깅
			e.printStackTrace();
			
			//예외패이지 전환을 위해 was에 던짐
			throw e;
		}
	}

}
