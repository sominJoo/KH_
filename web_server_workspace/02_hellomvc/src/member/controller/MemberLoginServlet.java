package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * @WebServlet : 서블릿 등록을 자동으로 처리함. 
 * 	-urlPatterns : String[]
 *  -name : String
 */
@WebServlet("/member/login")
//@WebServlet(urlPatterns = {"/member/login"})

public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberService memberService = new  MemberService();
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0.인코딩
		request.setCharacterEncoding("utf-8");
		
		//1.사용자 입력값 처리
		String memberId = request.getParameter("memberId");
		String password = request.getParameter("password");
		System.out.println("memberId@servlet = " + memberId);
		System.out.println("password@servlet = " + password);
		
		//3. 업무로직
		Member member = memberService.selectOne(memberId);
		System.out.println("member@servlet = " + member);
		
		
		//로그인 성공 여부
		//1. 로그인 성공 : member != null && password.equals(member.getPassword()) 
		//2. 로그인 실패 : (아이디 존재하지 않을 때) member == null 
		//				(비번 틀릴때) member != null && !password.equals(member.getPassword()) 
		
		if(member != null && password.equals(member.getPassword())) {
			//로그인 성공
			request.setAttribute("msg", "로그인 성공");
			
			//로그인한 사용자 정보
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", member);
		}
		else {
			//로그인 실패
			request.setAttribute("msg", "로그인 실패");
			request.setAttribute("loc", request.getContextPath());
		}
		
		//4.응답메세지 html
		RequestDispatcher reqD =  request.getRequestDispatcher("/index.jsp");
		reqD.forward(request, response);
	}

}
