package com.kh.ajax.xml;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class AjaxXmlServlet
 */
@WebServlet("/xml")
public class AjaxXmlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Member> list = new ArrayList<>();
		list.add(new Member("ha","황제성","hwang.jpg"));
		list.add(new Member("kim","김고은","김고은.jpg"));
		list.add(new Member("hyun","현타","hyunta.jpg"));
		list.add(new Member("yang","양세찬","yang_se_chan.jpg"));
		
		
		//2.jsp 위임
		request.setAttribute("list", list);
		request.getRequestDispatcher("/WEB-INF/views/xml/members.jsp").forward(request, response);
	}

}
