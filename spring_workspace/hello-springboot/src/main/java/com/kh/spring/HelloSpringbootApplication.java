package com.kh.spring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @SpringBootConfiguration : spring boot 관련 설정
 * @EnableAutoConfiguration :application -context를 관리(context는 하나- 레거시에서는 root,servlet 따로)
 * @ComponentScan : 현재 실행 클래스가 속한 base-package기준으로 annotation 활성화
 *
 */
@SpringBootApplication
public class HelloSpringbootApplication {

	public static void main(String[] args) {
		SpringApplication.run(HelloSpringbootApplication.class, args);
	}

}
