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

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet Filter implementation class AdminFilter
 */
@WebFilter( "/admin/*" )
public class AdminFilter implements Filter {
	/**
	 * admin login없이 접근시 redirect
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		HttpServletRequest httpReq = (HttpServletRequest)request;
		HttpServletResponse httpReps = (HttpServletResponse)response;
		
		HttpSession session = httpReq.getSession();
		Member member = (Member)session.getAttribute("loginMember");
		
		//로그인 객체가 없거나, 그 로그인 객체의 memberRole이 ADMIN_ROLE이 아닐때
		if(member == null || !(member.getMemberRole().equals(MemberService.ADMIN_ROLE))) {
			session.setAttribute("msg", "관리자만 사용가능합니다.");
			httpReps.sendRedirect(httpReq.getContextPath());
			return;
		} 
		

		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

}
