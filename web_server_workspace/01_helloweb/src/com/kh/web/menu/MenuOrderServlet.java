package com.kh.web.menu;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MenuOrderServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0.인코딩 선언
		request.setCharacterEncoding("utf-8");
		
		
		//1. 요청값
		String main = request.getParameter("main_menu");
		String side = request.getParameter("side_menu");
		String drink = request.getParameter("drink_menu");
		System.out.println("main = " + main);
		System.out.println("side = " + side);
		System.out.println("drink = " + drink);
		
		int main_price =0 ;
		int side_price=0;
		int dirnk_price=0;
		switch(main) {
		case "한우버거" : main_price = 5000; break;
		case "밥버거" : main_price = 4500; break;
		case "치즈버거" : main_price = 4000; break;
		}
		
		switch(side) {
		case "감자튀김" : side_price = 1500; break;
		case "어니언링" : side_price = 1700; break;
		}
		
		switch(drink) {
		case "콜라": dirnk_price = 1000; break;
		case "사이다" : dirnk_price = 1000; break;
		case "커피" : dirnk_price = 1500; break;
		case "밀크쉐이크" : dirnk_price = 2500; break;
		}
		
		String total =Integer.toString(main_price + side_price + dirnk_price);
		System.out.println("total = "  + total);
		request.setAttribute("total",total);
		
		//위임처리
		RequestDispatcher reqD = request.getRequestDispatcher("/menu/menuOrder.jsp");
		reqD.forward(request, response);
	}
}
