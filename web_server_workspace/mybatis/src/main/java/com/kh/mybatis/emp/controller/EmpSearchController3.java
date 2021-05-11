package com.kh.mybatis.emp.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.common.AbstractController;
import com.kh.mybatis.emp.model.service.EmpService;
import com.kh.mybatis.emp.model.service.EmpServiceImpl;

public class EmpSearchController3 extends AbstractController{
	private EmpService empService = new EmpServiceImpl();

	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			String[] jobCodeArr = request.getParameterValues("jobCode");
			String[] deptIdArr = request.getParameterValues("deptId");
			List<String> deptIdList = null;
			if(deptIdArr != null)
				deptIdList = Arrays.asList(deptIdArr);
			
			
			Map<String, Object> param = new HashMap<>();
			param.put("jobCodeArr", jobCodeArr);
			param.put("deptIdList", deptIdList);
			
			System.out.println("param@controller = " + param);
			
			
			//2. 업무로직
			List<Map<String, String>> jobList= empService.selectJobList();			
			System.out.println("jobList@controller =  "+jobList);
			
			List<Map<String, String>> deptList= empService.selectDeptList();			
			System.out.println("deptList@controller =  "+deptList);

			
			//job + dept 검색
			List<Map<String, Object>> list = empService.search3(param);
			System.out.println("list@controller = " + list);

			
			request.setAttribute("list", list);			
			request.setAttribute("jobList", jobList);
			request.setAttribute("deptList", deptList);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "emp/search3";
	}
	
	
}
