package com.kh.mybatis.student.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.mybatis.common.AbstractController;
import com.kh.mybatis.student.model.service.StudentService;
import com.kh.mybatis.student.model.service.StudentServiceImpl;

public class SelectOneStudentMapController extends AbstractController{
	private StudentService studentService = new StudentServiceImpl();
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int no =0;
			try {
				no = Integer.parseInt(request.getParameter("no"));
			} catch (Exception e) {
				
			}
			
			Map<String, Object> student = studentService.selectOneMapStudent(no);
			System.out.println("student@lMapcontroller" + student);
			
			//json 문자열로 변환후 응답메세지에 출력
			response.setContentType("application/json; charset=utf-8");
			Gson gson = new Gson();
			gson.toJson(student,response.getWriter());
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		//비동기 통신에서 응담 메세지에 json 문자열을 직접 출력. forwarding, redirect를 안함
		return null;
	}
	
}
