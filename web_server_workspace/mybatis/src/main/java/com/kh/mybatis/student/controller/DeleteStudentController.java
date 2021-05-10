package com.kh.mybatis.student.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.mybatis.common.AbstractController;
import com.kh.mybatis.common.exception.NoMatchingStudentException;
import com.kh.mybatis.student.model.service.StudentService;
import com.kh.mybatis.student.model.service.StudentServiceImpl;
import com.kh.mybatis.student.model.vo.Student;

public class DeleteStudentController extends AbstractController{
	private StudentService studentService = new StudentServiceImpl();
	@Override
	public String doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no=0;
		try {
			no = Integer.parseInt(request.getParameter("no"));
			
			int result = studentService.deleteStudent(no);
			if(result ==0) {
				throw new NoMatchingStudentException(String.valueOf(no));
			}
			request.getSession().setAttribute("msg", "삭제 성공");
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
		
		return "redirect:/student/selectOne.do?no=" + no;
	}

}
