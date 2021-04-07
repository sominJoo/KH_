package board.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;
import common.MvcUtils;

/**
 * 페이징
 *  - 한페이지 당 게시글 수 5개 
 * 
 */
@WebServlet("/board/boardList")
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	final int NUM_PER_PAGE =5;
	BoardService boardService = new BoardService();
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int cPage = 1;
		try {
			cPage = Integer.parseInt(request.getParameter("cPage"));
		}catch (NumberFormatException e) {
			// TODO: handle exception
		}
		int end = cPage*NUM_PER_PAGE;
		int start = (end+1) - NUM_PER_PAGE;


		
		//List, count
		List<Board> list = boardService.selectList(start, end);

		int totalContents = boardService.selectBoardCount();
		
		String url = request.getRequestURI();
		String pageBar = MvcUtils.getPageBer(cPage, NUM_PER_PAGE, totalContents, url);
		
		request.setAttribute("pageBar", pageBar);
		request.setAttribute("list", list);
		//jsp 연경
		request.getRequestDispatcher("/WEB-INF/views/board/boardList.jsp")
				.forward(request, response);
		
	}

}
