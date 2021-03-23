
package com.kh.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

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
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//0. 인코딩 선언
		req.setCharacterEncoding("utf-8");
		
		//1.사용자 입력값 담기
		String name = req.getParameter("name");
		String color = req.getParameter("color");
		String animal = req.getParameter("animal");
		String[] foodArr = req.getParameterValues("food");
		
		
		//2. 업무로직
		
		
		//3. 응답 메세지 처리
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
