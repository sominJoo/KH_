package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.MvcUtils;
import common.listener.SessionCounterListener;
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
//		request.setCharacterEncoding("utf-8");
		
		//1.사용자 입력값 처리
		String memberId = request.getParameter("memberId");
		String password = MvcUtils.getSha512(request.getParameter("password"));
		String saveId = request.getParameter("saveId");
		System.out.println("memberId@servlet = " + memberId);
		System.out.println("password@servlet = " + password);
		System.out.println("password@servlet = " + saveId);
		
		//3. 업무로직
		Member member = memberService.selectOne(memberId);
		System.out.println("member@servlet = " + member);
		
		
		//로그인 성공 여부
		//1. 로그인 성공 : member != null && password.equals(member.getPassword()) 
		//2. 로그인 실패 : (아이디 존재하지 않을 때) member == null 
		//				(비번 틀릴때) member != null && !password.equals(member.getPassword()) 

		HttpSession session = request.getSession(true);
		if(member != null && password.equals(member.getPassword())) {
			//로그인 성공
			//request.setAttribute("msg", "로그인 성공");
			
			//로그인한 사용자 정보
			//request.getSession(true) : 새로 생성 여부(default : true);
			System.out.println("sessionId@memberLoginServlet = " + session.getId());
			session.setAttribute("loginMember", member);
		
			Cookie c = new Cookie("saveId", memberId);
			c.setPath(request.getContextPath()); 			//path 쿠키를 전송할 url
			//saveId: cookie 처리
			if(saveId != null) {
				//saveId 체크 시 
				c.setMaxAge(60*60*24*7);					// 7일짜리 영속 쿠키로 지정 
			}else {
				//saveId 체크  해제 시 
				c.setMaxAge(0);								// 쿠키를 바로 지움
			}
			response.addCookie(c);

		}
		else {
			//로그인 실패
//			request.setAttribute("msg", "로그인 실패");					//request는 일회용이기 때문에 리다이랙트로 해주면 request가 초기화된다.
//			request.setAttribute("loc", request.getContextPath());			
			
			session.setAttribute("msg", "로그인 실패");
		}
		
		//Header referer 가져오기 Referer : 요청을 보낸 페이지를 저장하고있음
		String referer = request.getHeader("Referer");
		
		//리다이렉트 : url 변경 => 로그인을 해도  /mvc/member/login로 이동하는것이 아니라 요청받은 주소로 다시 리다이렉트함
		response.sendRedirect(referer);

	}

}
