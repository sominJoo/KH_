package com.kh.mybatis.emp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.common.AbstractController;

public class UpdateEmpController extends AbstractController{

	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String empId;
		
		List<String> jobList;
		List<String> deptList;
		
		
		return "emp/empUpdate";
	}

	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		return super.doPost(request, response);
	}

}
