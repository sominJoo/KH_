package com.kh.spring.demo.model;

import java.util.regex.Pattern;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.kh.spring.demo.controller.DemoController;
import com.kh.spring.demo.model.vo.Dev;

public class DevValidator implements Validator {
	private static final Logger log = LoggerFactory.getLogger(DemoController.class);

	
	/**
	 * 검사하고자 하는 객체가 Dev타입일때만 유효성 검사 지원
	 */
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Dev.class.isAssignableFrom(clazz);
	}

	/**
	 * 필드별로 유효성 검사를 실시.
	 * 부적합한 값의 경우, Errors 객체에 해당 오류사실을 저장
	 * 
	 * object : command 객체임
	 */
	@Override
	public void validate(Object target, Errors errors) {
		Dev dev =(Dev)target;
		log.info("dev={}",dev);
		
		// 1. 이름 검사
		String name = dev.getName();
		if(name==null || name.isEmpty())
			errors.rejectValue("name","error-name", "개발자명 누락");
		
		if (!Pattern.matches("[가-힣]{2,}", name)) {
			errors.rejectValue("name","error-name", "개발자명 부적절");
		}

		//2. 경력 검사
		int career = dev.getCareer();
		if(career <0)
			errors.rejectValue("career","error-career", "경력기간 오류");
			
	}

}
