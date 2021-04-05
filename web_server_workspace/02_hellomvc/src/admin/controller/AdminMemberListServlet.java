package admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.MvcUtils;
import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Paging Recipe
 * A. Contents Section : 쿼리
 * 		1. 시작 rownum ~ end rownum
 * 		2. cpage(: 현재 페이지) , numPerPage(: 페이지당 표시할 컨텐츠 수)
 * 		
 * B. Pagebar Section	 : html 작성
 * 		1. totalContents(: 총 컨텐츠 수)
 * 		2. totalPage(: 전체페이지 수)
 * 		3. pageBarSize(: 페이지 바에 표시할 페이지 개수)
 * 		4. pageNo (:페이지 넘버를 출력할 증감변수)
 * 		5. pageStart ~ pageEnd (:pageNo의 범위)
 * 
 */
@WebServlet("/admin/memberList")
public class AdminMemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private MemberService memberService = new MemberService();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 사용자 입력값 : 현재 페이지 cPage
		final int NUM_PER_PAGE = 10;
		int cPage = 1;
		try {
			cPage = Integer.parseInt(request.getParameter("cPage"));
		}catch(NumberFormatException e) {
			//처리코드 없음. 기본값  1 유지
		}


			
		
		//2.업무 로직 : db에서 전체 회원 조회(내림차순 조회) : 
		//cpage = 1 :  1~10
		//cpage = 2 :  11~20
		//cpage = 3 :  21~30
		//cpage = 4 :  31~40
		//cpage = 5 :  41~50
		int start = (1 + cPage*NUM_PER_PAGE) - NUM_PER_PAGE;
		int end = cPage*NUM_PER_PAGE;
		List<Member> list =memberService.selectList(start,end);

		int totalContents = memberService.selectMemberCount();
		System.out.println("totalContents = " + totalContents);
		
		//3.pageBar 영역 작업 
		String url = request.getRequestURI(); // /mvc/admin/memberList
		String pageBar = MvcUtils.getPageBer(
				cPage,
				NUM_PER_PAGE,
				totalContents,
				url 		//이동할 링크
				);

		request.setAttribute("pageBar", pageBar);	//한 요청안에서만 일어나면 되므올 redirect x
		request.setAttribute("list", list);	//한 요청안에서만 일어나면 되므올 redirect x
		request.getRequestDispatcher("/WEB-INF/views/admin/memberList.jsp")
				.forward(request, response);;
	}
	
}
