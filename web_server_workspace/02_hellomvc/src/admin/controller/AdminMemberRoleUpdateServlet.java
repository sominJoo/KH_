package admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;

/**
 * Servlet implementation class AdminMemberRoleUpdateServlet
 */
@WebServlet("/admin/memberRoleUpdate")
public class AdminMemberRoleUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 사용자 입력
		String memberId = request.getParameter("memberId");
		String memberRole =request.getParameter("memberRole");
		
		//2.업무로직
		int result = new MemberService().updateMemberRole(memberId, memberRole);
		
		String msg = result >0 ? "성공적으로 회원정보를 수정했습니다.": "회원정보수정에 실패했습니다.";
		HttpSession session = request.getSession();
		
		session.setAttribute("msg", msg);
		response.sendRedirect(request.getContextPath() + "/admin/memberList");
		
	}

}
