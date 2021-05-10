package com.kh.mybatis.emp.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.common.AbstractController;
import com.kh.mybatis.emp.model.service.EmpService;
import com.kh.mybatis.emp.model.service.EmpServiceImpl;

public class EmpSearchController2 extends AbstractController{
	private EmpService empService = new EmpServiceImpl();

	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String searchType = request.getParameter("searchType");
		String searchKeyword = request.getParameter("searchKeyword");
		String gender = request.getParameter("gender");
		
		Map<String, Object> param = new HashMap<String, Object>();
		
		param.put("searchType",searchType);
		param.put("searchKeyword",searchKeyword);
		param.put("gender",gender);
		
		System.out.println("param : "+param);
		
		List<Map<String, Object>> list= empService.search2(param);
		System.out.println(list);

		request.setAttribute("list", list);
		return "emp/search2";
	}
	
	
}
