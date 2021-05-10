package com.kh.mybatis.student.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.common.AbstractController;
import com.kh.mybatis.student.model.service.StudentService;
import com.kh.mybatis.student.model.service.StudentServiceImpl;
import com.kh.mybatis.student.model.vo.Student;

public class InsertStudentController extends AbstractController {
	
	//controller 가 의존하는 Service 단 객체는 interface를 통해 제어한다.
	private StudentService studentService = new StudentServiceImpl();
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		return "student/insertStudent";
	}

	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//1. 사용자 입력값 처리
			String name = request.getParameter("name");
			String tel = request.getParameter("tel");
			Student student = new Student();
			student.setName(name);
			student.setTel(tel);
			
			
			int result = studentService.insertStudent(student);

			String msg = "등록성공";
			request.getSession().setAttribute("msg",msg);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
		return "redirect:/student/insertStudent.do";
	}

	
}
