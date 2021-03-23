package com.kh.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet
 * -web serive를 위한 java class이다.
 * -반드시, HttpServlet 상속받아야함
 * 
 * 
 * Servlet 생명주기
 * -was 구동 내내 딱 하나의 객체만 만들어져서 처리된다.(singletone 방식) 
 * 1. Servlet 객체 생성(기본 생성자 호출) 			- 최초 client 호출 시 1회
 * 2. init 메소드 호출 							- 최초 client 호출 시 1회
 * 3. HttpServlet의 service 메소드 호출			- client 매 요청 마다
 * 4. 전송방식에 따라 doGet | doPost 호출			- client 매 요청 마다
 * 5. destroy 호츌(tomcat 종료 시 객체 반환)		- 마지막 1회
 * 
 * 
 * 멱등 
 *  - 서비스 전후로 DB의 상태가 바뀌지 않는 경우
 *  - select (멱등) => GET(URL에 노출됨)
 *  - insert update delete => (멱등X) => POST
 *  - login (id/pwd 노출을 막기위해) => POST 
 * @author ddomin
 *
 */
public class TestPerson1Servlet extends HttpServlet {
	
	public TestPerson1Servlet() {
		super();
		System.out.println("기본 생성자 호출");
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init(ServletConfig) 호출");
	}

	@Override
	public void destroy() {
		System.out.println("destory() 호출");
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//매 요청 시 사용되는 servlet 객체는 동일하다.
		System.out.println(this.hashCode());		//동일
		
		
		//1. 사용자 입력값 가져오기
		String name = req.getParameter("name"); // key 
		String color = req.getParameter("color"); // key 
		String animal = req.getParameter("animal"); // key 
		
		//checkbox는 복수의 값이 넘어오므로 getPramterValues 사용. 배열을 리턴
		String[] foodArr = req.getParameterValues("food");
		
		System.out.println("name = " + name);
		System.out.println("color = " + color);
		System.out.println("animal = " + animal);
		System.out.println("foodArr = " + Arrays.toString(foodArr));
		
		
		
		//2.응답 메세지 작성 : html
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title> 취향 검사 결과 </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1> 개인 취향 검사 결과 GET </h1>");
		out.println("<p>" + name +"님의 취향 검사 결과는" + "</p>");
		out.println("<p>" + color +"색을 좋아합니다." + "</p>");
		out.println("<p> 좋아하는 동물은 " + animal +"입니다" + "</p>");
		out.println("<p> 좋아하는 음식은 " + Arrays.toString(foodArr) +"입니다" + "</p>");		
		out.println("</body>");
		out.println("</html>");
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//request로 꺼낼 때부터 깨짐 => 꺼내기전에 인코딩 선언
		//0.인코딩 선언
		//http message body 부분 인코딩이 유효하도록 한다.
		req.setCharacterEncoding("utf-8");
		
		//1. 사용자 입력값 가져오기
		String name = req.getParameter("name"); // key 
		String color = req.getParameter("color"); // key 
		String animal = req.getParameter("animal"); // key 
		
		//checkbox는 복수의 값이 넘어오므로 getPramterValues 사용. 배열을 리턴
		String[] foodArr = req.getParameterValues("food");
		
		System.out.println("name = " + name);
		System.out.println("color = " + color);
		System.out.println("animal = " + animal);
		System.out.println("foodArr = " + Arrays.toString(foodArr));
		
		
		
		//2.응답 메세지 작성 : html
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title> 취향 검사 결과 </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1> 개인 취향 검사 결과 POST </h1>");
		out.println("<p>" + name +"님의 취향 검사 결과는" + "</p>");
		out.println("<p>" + color +"색을 좋아합니다." + "</p>");
		out.println("<p> 좋아하는 동물은 " + animal +"입니다" + "</p>");
		out.println("<p> 좋아하는 음식은 " + Arrays.toString(foodArr) +"입니다" + "</p>");		
		out.println("</body>");
		out.println("</html>");
	}
	
	
}
