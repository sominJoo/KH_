package common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.vo.Member;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter({ "/member/memberView"
			, "/member/memberUpdate"
			, "/member/memberDelete" 
			,"/member/updatePassword"})
public class LoginFilter implements Filter {
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// 로그인여부 확인하기
		HttpServletRequest httpReq = (HttpServletRequest)request;
		HttpServletResponse httpRes = (HttpServletResponse)response;
		
		//session이 없으면 바로 만든다. => session 유효성 검사 필요없음
		HttpSession session = httpReq.getSession();
		Member member = (Member)session.getAttribute("loginMember");		//loginServlet에서 session에 로그인한 member 객체를 저장함
		
		
		//로그인하지않고 url로 접근 시 
		if(member == null) {			
			session.setAttribute("msg", "로그인 후 사용 가능");
			httpRes.sendRedirect(httpReq.getContextPath());
			return;
		}
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

}
