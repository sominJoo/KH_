package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.MvcUtils;
import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class UpdatePasswordServlet
 */
@WebServlet("/member/updatePassword")
public class UpdatePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * memberView에서 Get방식으로 들어옴(변경 버튼 onclick 이벤트)
	 * 비밀번호 변경 페이지 제공
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//forward 처리
		request.getRequestDispatcher("/WEB-INF/views/member/updatePassword.jsp")
			   .forward(request, response);
	}

	/**
	 * 비밀번호 변경 처리
	 * 
	 * DB 연동
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1. 사용자 입력값 처리
		String password = MvcUtils.getSha512(request.getParameter("password"));
		String newPassword = MvcUtils.getSha512(request.getParameter("newPassword"));
		
		HttpSession session = request.getSession();
		Member member = (Member)session.getAttribute("loginMember");

		String msg = "";

		//session에 저장된 객체의 비밀번호 비교
		if(member.getPassword().equals(password) ==false) {
			session.setAttribute("msg", "비밀번호가 일치하지 않습니다.");
			response.sendRedirect(request.getContextPath()+"/member/updatePassword");
			return;
		}
		
		int result = new MemberService().updatePassword(member.getMemberId(),newPassword);
		if(result > 0) {
			session.setAttribute("msg", "비밀번호를 성공적으로 변경하였습니다.");
			response.sendRedirect(request.getContextPath()+"/member/memberView");		
		}
			
		
	}

}
