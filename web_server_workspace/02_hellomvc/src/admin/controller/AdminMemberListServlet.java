package admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class AdminMemberListServlet
 */
@WebServlet("/admin/memberList")
public class AdminMemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private MemberService memberService = new MemberService();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminMemberListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.업무 로직 : db에서 전체 회원 조회(내림차순 조회)
		List<Member> list =memberService.selectList();
		for(Member m : list)
			System.out.println("list@AdminServlet"+m);
		
		
		request.setAttribute("list", list);	//한 요청안에서만 일어나면 되므올 redirect x
		request.getRequestDispatcher("/WEB-INF/views/admin/memberList.jsp")
				.forward(request, response);;
		
		
		//		List<Member> list = new AdminService().selectList(); //=> 별도의 Admin 서비스를 만들어 사용 가능.(Admin에서만 독자적으로 하는 서비스라면 필수. 지금은 회원정보여서 필수x)
	}

}
