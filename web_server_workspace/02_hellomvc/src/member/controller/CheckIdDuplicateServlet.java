package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class CheckIdDuplicateServlet
 */
@WebServlet("/member/checkIdDuplicate")
public class CheckIdDuplicateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 사용자 입력값 처리
		String memberId = request.getParameter("memberId");
		
		//2. 업무 로직 : 해당 ID를 db에서 조회
		Member member = new MemberService().selectOne(memberId);
		boolean available = member ==null;
		request.setAttribute("available", available);
		//3. 응답처리 : 사용 가능 여부
		RequestDispatcher reqd= request.getRequestDispatcher("/WEB-INF/views/member/checkIdDuplicate.jsp");
		reqd.forward(request, response);
	}

}
