package com.kh.spring.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import lombok.extern.slf4j.Slf4j;

/**
 * HandlerInterceptorAdapter : 핸들러 앞 뒤로 가로챔
 * @author ddomin
 *
 */

@Slf4j
public class LoggerInterceptor extends HandlerInterceptorAdapter{

	/**
	 * 핸들러 호출전
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		log.debug("================Handler Strat==================");
		log.debug(request.getRequestURI());
		log.debug("===============================================");

		return super.preHandle(request, response, handler);//true를 리턴(false 리턴시 다음 코드 실행x)
	}

	/**
	 * Handler 리턴 이후 => Handler에서 작업한 ModelAndView 객체 확인 가능
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);	
		
		log.debug("===============================================");
		log.debug("modelAndview= {}",modelAndView);
	}

	
	/**
	 * View단 작업 이후
	 */
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		log.debug("------------------- view ---------------------");
		super.afterCompletion(request, response, handler, ex);
		log.debug("____________________ end _____________________\n");
	}
}
