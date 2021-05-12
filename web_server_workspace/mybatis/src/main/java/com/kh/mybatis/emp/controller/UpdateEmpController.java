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

public class UpdateEmpController extends AbstractController{
	private EmpService empService = new EmpServiceImpl();
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String empId = request.getParameter("empId");
			
			List<Map<String,String>> jobList =empService.selectJobList();
			List<Map<String, String>> deptList=empService.selectDeptList();
			Map<String, Object> emp = empService.selectOneEmp(empId);
			
			request.setAttribute("jobList", jobList );
			request.setAttribute("deptList", deptList );
			request.setAttribute("emp", emp );
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return "emp/empUpdate";
	}

	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String empId=null;
		try {
			Map<String, String> param = new HashMap<String, String>();
			empId= request.getParameter("empId");
		
			param.put("empId", empId);
			param.put("jobCode", request.getParameter("jobCode"));
			param.put("deptCode",  request.getParameter("deptCode"));
			System.out.println("param= "+param);
			
			int result = empService.updateEmp(param);
			if(result<0)
				throw new  IllegalArgumentException(empId);
			
			request.getSession().setAttribute("msg", "수정완료");
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		return "redirect:/emp/updateEmp.do?empId="+empId;
	}

}
