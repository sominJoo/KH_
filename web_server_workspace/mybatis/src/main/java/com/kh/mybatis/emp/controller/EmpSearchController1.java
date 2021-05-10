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

public class EmpSearchController1 extends AbstractController{
	private EmpService empService = new EmpServiceImpl();

	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String searchType = request.getParameter("searchType");
		String searchKeyword = request.getParameter("searchKeyword");
		
		Map<String, Object> param = new HashMap<String, Object>();
		
		param.put("searchType",searchType);
		param.put("searchKeyword",searchKeyword);
		
		System.out.println("param : "+param);
		
		List<Map<String, Object>> list= null;
		System.out.println(list);

		if (searchType != null && searchKeyword!=null) {
			//검색
			list= empService.search1(param);
		}
		else {
			//모든 list
			 list = empService.selectAllEmp();
		}
		
		request.setAttribute("list", list);
		return "emp/search1";
	}
	
	
}
