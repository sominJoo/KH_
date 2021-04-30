package com.kh.el;

import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.person.model.vo.Person;

/**
 * Servlet implementation class ELBasicsServlet
 */
@WebServlet("/el/elBasics.do")
public class ELBasicsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("coffee","안타구아");
		request.setAttribute("serverTime",System.currentTimeMillis()); 
		request.setAttribute("honngd",new Person("honngd","길동",'남',23,true));
		List<Object> list = Arrays.asList("abs",1234,new Date());
		request.setAttribute("list", list);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("language", "Java");
		map.put("Dr.zang", new Person("zang","장영실",'남',56,false));
		request.setAttribute("map", map);
		
		
		HttpSession session =request.getSession();
		session.setAttribute("book", "디지털");
		
		//생명주기가 가장 김
		ServletContext ap = request.getServletContext();
		ap.setAttribute("app", "내가 제일 길다");
		request.getRequestDispatcher("/el/elBasics.jsp").forward(request, response);
	}

}
