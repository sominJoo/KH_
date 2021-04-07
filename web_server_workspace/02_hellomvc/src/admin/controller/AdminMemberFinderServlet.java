package admin.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
 * Servlet implementation class AdminMemberFinderServlet
 */
@WebServlet("/admin/memberFinder")
public class AdminMemberFinderServlet extends HttpServlet {
	final int NUM_PER_PAGE = 10;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		//1. 사용자 입력값 처리
//		String  searchType = request.getParameter("searchType");
//		String searchKeyword = request.getParameter("searchKeyword");
//
//		
//		HttpSession session = request.getSession();
//		//세션에 저장되어있지 않으면
//		if(session.getAttribute("searchType") == null) {
//			session.setAttribute("searchType", searchType);
//			session.setAttribute("searchKeyword", searchKeyword);
//		}
//		else {
//			//새로들어온 요청값이 있을때 
//			if( request.getParameter("searchType") != null) {
//				//세션에 저장된 type또는 값이 요청된 값과 일치하지 않으면 재설정
//				if( session.getAttribute("searchType") != searchType ||(String)session.getAttribute("searchKeyword") != searchKeyword ) {
//					session.setAttribute("searchType", searchType);
//					session.setAttribute("searchKeyword", searchKeyword);
//				}			
//				//
//				else {
//					searchType =	(String) session.getAttribute("searchType");
//					searchKeyword = (String) session.getAttribute("searchKeyword");
//				}
//			}
//			else {
//				searchType =	(String) session.getAttribute("searchType");
//				searchKeyword = (String) session.getAttribute("searchKeyword");				
//			}
//
//		}
//
//		int cPage = 1;
//		try {
//			cPage = Integer.parseInt(request.getParameter("cPage"));
//		}catch(NumberFormatException e) {
//			//처리코드 없음. 기본값  1 유지
//		}
//		
//		Map<String, String> param = new HashMap<>();
//		param.put("searchType", searchType);
//		param.put("searchKeyword",  searchKeyword);
//		System.out.println("param@Finder ="  + param );
//
//
//		//2.pageBar 영역 작업 
//		int start = (1 + cPage*NUM_PER_PAGE) - NUM_PER_PAGE;
//		int end = cPage*NUM_PER_PAGE;
//
//		
//		//3. 업무로직
//		List<Member> list = new MemberService().searchMember(param,start,end);		
//		int totalContents =  new MemberService().searchMemberCount(param);
//
//		String url = request.getRequestURI() + "?searchType=" + searchType + "&searchKeyword=" + searchKeyword ; 
//		String pageBar = MvcUtils.getPageBer(
//				cPage,
//				NUM_PER_PAGE,
//				totalContents,
//				url 		//이동할 링크
//		);
//		
//		
//		request.setAttribute("pageBar", pageBar);	//한 요청안에서만 일어나면 되므올 redirect x
//		request.setAttribute("list", list);
//		request.getRequestDispatcher("/WEB-INF/views/admin/memberList.jsp")
//				.forward(request, response);
		
		
		//강사님 코드
		//1. 사용자입력값 처리
		String searchType = request.getParameter("searchType");
		String searchKeyword = request.getParameter("searchKeyword");
		final int numPerPage = 10;
		int cPage = 1;
		try {
			cPage =	Integer.parseInt(request.getParameter("cPage"));
		} catch (NumberFormatException e) {
			// 처리 코드 없음. 기본값 1 유지.
		}
		Map<String, String> param = new HashMap<>();
		param.put("searchType", searchType);
		param.put("searchKeyword", searchKeyword);
		
		//2. 업무 로직
		int start = (1 + cPage*NUM_PER_PAGE) - NUM_PER_PAGE;
		int end = cPage*NUM_PER_PAGE;
		List<Member> list = new MemberService().searchMember(param,start,end);		
		System.out.println("list@servlet = " + list);
		
		int totalContents =  new MemberService().searchMemberCount(param);
		System.out.println("totalContents@servlet = " + totalContents);
		
		//3. pageBar영역 작업
		String url = request.getRequestURI() + "?searchType=" + searchType + "&searchKeyword=" + searchKeyword ; // => 세션 사용안해도 됨
		// /mvc/admin/memberFinder?searchType=gender&serarchKeyword=M
		String pageBar = MvcUtils.getPageBer(
					cPage,
					numPerPage,
					totalContents,
					url
				);
		
		//4. jsp에 html응답메세지 작성 위임
		request.setAttribute("pageBar", pageBar);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/WEB-INF/views/admin/memberList.jsp")
			   .forward(request, response);
		
	}
}
