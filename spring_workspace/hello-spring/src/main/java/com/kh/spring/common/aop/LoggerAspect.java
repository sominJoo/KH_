package com.kh.spring.common.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Aspect			//ascept 클래스 등록 - 하위에 pointcut, advice 가지고있음
@Component		//빈 등록을 위해서
public class LoggerAspect {
	
	@Pointcut("execution(* com.kh.spring.memo..selectMemoList(..))")
	public void loggerPointcut() {}
	
	/**
	 * Around Advice
	 * - JoinPoint 실행전, 실행후에 삽입되어 처리되는 advice(보조업무)
	 * 
	 * @param joinPoint
	 * @return
	 * @throws Throwable 
	 */
	@Around("loggerPointcut()")		// 위에서 정의한 pointcut을 참조
	public Object logger(ProceedingJoinPoint joinPoint) throws Throwable {
		Signature signature = joinPoint.getSignature();
		
		//before
		log.debug("----- {} start -----", signature);
		
		
		//주업무 joinPoint실행
		Object returnObj = joinPoint.proceed();
		
		//after
		log.debug("----- {} end -----", signature);
		
		return returnObj;
	}
	
}
