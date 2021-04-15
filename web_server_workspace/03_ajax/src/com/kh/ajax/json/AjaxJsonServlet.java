package com.kh.ajax.json;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class AjaxJsonServlet
 */
@WebServlet("/json")
public class AjaxJsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.사용자 입력값
		String searchId = request.getParameter("searchId");

		List<Member> list = new ArrayList<>();
		list.add(new Member("ha","황제성","hwang.jpg"));
		list.add(new Member("kim","김고은","김고은.jpg"));
		list.add(new Member("hyun","현타","hyunta.jpg"));
		list.add(new Member("yang","양세찬","yang_se_chan.jpg"));
		
		Member member = null;
		
		//검색어가 존재하는경우 Member객체에 저장. (id일치회원 조회)
		if(searchId != null) {
			for(Member m: list) {
				if(searchId.equals(m.getId())) {
					member = m;
					break;
				}
			}
		}
		
		//3. json 문자열로 변환 및 응답 메세지에 출력하기.
		
		//응답헤더(메세지 )작성
		response.setContentType("application/json; charset=utf-8");
		Gson gson = new Gson();
//		String jsonStr = gson.toJson(list);
		String jsonStr = gson.toJson(searchId !=null ? member : list);

		System.out.println("list@servlet = "+jsonStr);
		PrintWriter out = response.getWriter();
		out.print(jsonStr);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		
		//업무로직
		
		//응답메세지
		response.setContentType("text/plain; charset=utf-8");
		response.getWriter().println("회원가입 성공");
		
	}

}
