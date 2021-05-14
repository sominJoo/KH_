package com.kh.spring.tv;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.kh.spring.tv.model.vo.LgTv;
import com.kh.spring.tv.model.vo.SamsungTv;

public class TvBeanMain {

	public static void main(String[] args) {
		//ApplicationContext 생성
		// - bean을 관리하는 단위
		
		String configLocation ="/application-context.xml";
		ApplicationContext context = new ClassPathXmlApplicationContext(configLocation);
		System.out.println("----------------------Spring Container bean 초기화 완료----------------------");
		
		LgTv lgtv =context.getBean(LgTv.class);	//class로 찾기
		System.out.println(lgtv);

		// scope="prototype" : 객체를 호출마다 계속 생성함
		LgTv lgtv1 =context.getBean(LgTv.class);
		System.out.println(lgtv1);			//객체 또 생성 x. 같은 객체임.
		
		
		SamsungTv samsungTv= (SamsungTv) context.getBean("samsungTv");	//id로 찾기
		System.out.println(samsungTv);
		System.out.println();
		
		lgtv1.powerOn();
		lgtv1.changeChannel(3);
		
		samsungTv.powerOn();
		samsungTv.changeChannel(33);
		
	}

}
