package com.kh.mybatis.student.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.common.AbstractController;
import com.kh.mybatis.student.model.service.StudentService;
import com.kh.mybatis.student.model.service.StudentServiceImpl;
import com.kh.mybatis.student.model.vo.Student;

public class SelectOneController extends AbstractController{
	private StudentService studentService = new StudentServiceImpl();
	@Override
	public String doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = 0;
		try {
			no=Integer.parseInt(request.getParameter("no"));
		} catch (Exception e) {
			// 처리코드 없음
			System.out.println("no없음");
		}
		
		int total = studentService.selectStudentCount();
		System.out.println("total@contorller"+ total);
		if(no != 0) {
			Student student = studentService.selectOneStudent(no);
			System.out.println("studnet@controller"+ student);
			request.setAttribute("student", student);
		}
		//jsp 위임
		request.setAttribute("total", total);
		return "student/selectOne";
	}

}
