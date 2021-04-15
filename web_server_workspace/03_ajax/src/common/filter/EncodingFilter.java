package common.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 * Servlet Filter implementation class EncodingFilter
 */
@WebFilter("/*")
public class EncodingFilter implements Filter {
	
	/**
	 * web.xml에  등록된 순서대로 처리됨.
	 *  webFilter 사용 시 그냥 이름순으로 처리( => 처리순서가 중요하면 web.xml에 등록하여 사용)
	 *  web.xml이 @WebFilter보다 우선순위가 높음
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		request.setCharacterEncoding("utf-8");
		System.out.println("[UTF-8] Encoding 처리함.");

		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

}
