
package com.kh.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author ddomin
 *
 */
public class TestPerson2Servlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0. 인코딩 선언
		request.setCharacterEncoding("utf-8");
		
		//1.사용자 입력값 담기
		String name = request.getParameter("name");
		String color = request.getParameter("color");
		String animal = request.getParameter("animal");
		String[] foodArr = request.getParameterValues("food");
		
		
		//2. 업무로직
		//추천 로직
		String recommendation ="";
		switch(color) {
		case "빨강" : recommendation ="빨간 짬뽕"; break;
		case "노랑" : recommendation ="노랑 참외"; break;
		case "초록" : recommendation ="초록 시금치"; break;
		case "파랑" : recommendation ="파랑 파워에이드"; break;
		}
		
		
		//3. 응답 메세지 처리
		//front-end 쪽과 파일을 공유하기 때문에 충돌 위험
		//reloading을 해야하므로 서버를 껐다 켜야함 -> 사용자 불편, 위험함
		// => jsp를 사용하여 변경 가능
		/*
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title> 취향 검사 결과 </title>");
		out.println("<style>");
		out.println(".recommendation { font-size : 2em; color : lime ; text-decoration : underline;}");
		out.println("</style>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1> 개인 취향 검사 결과 JSP </h1>");
		out.println("<p>" + name +"님의 취향 검사 결과는" + "</p>");
		out.println("<p>" + color +"색을 좋아합니다." + "</p>");
		out.println("<p> 좋아하는 동물은 " + animal +"입니다" + "</p>");
		out.println("<p> 좋아하는 음식은 " + Arrays.toString(foodArr) +"입니다" + "</p>");
		out.println("<hr/>");		
		out.println("<p class ='recommendation'> 오늘은 " +recommendation+ " 어떠세요?</p>");		
		out.println("</body>");
		out.println("</html>");
		*/
		
		//jsp에 새로 생성된 data를 전달하기 위해 request에 속성으로 저장함다.
		//key, value로 저장
		request.setAttribute("recommendation", recommendation);
		
		//3. html 작성을 jsp에 위임 => 서버를 reloading 하지 않아도 html, 자바 코딩 가능
		// /슬래시로 시작한다면, /WebConent에서 조회함
		RequestDispatcher reqD = request.getRequestDispatcher("/servlet/testPersonEnd.jsp");
		reqD.forward(request, response);
	}

}
