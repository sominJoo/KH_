package com.oop.movie.model.entity;

import java.util.Calendar;

public class MovieRun {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String[] casting= {"소민","수지","혜선","나나","도연"};
		Calendar release = Calendar.getInstance();
		//1. setter, getter 이용
		Movie m1 = new Movie();
		m1.setMovieTitle("우편물 도착서");
		m1.setDirector("주소민");
		m1.setCasting(casting);
		m1.setRelease(release);
		System.out.println(m1.movieInfo());
		
		
		//파라미터 생성자 이용1
		String[] casting2 = {"루룰","랄라","빠밤","혜선","나나"};
		Movie m2 = new Movie("커피는 맛있다");
		m2.setDirector("김감독");
		m2.setCasting(casting2);
		m2.setRelease(release);
		System.out.println(m2.movieInfo());
		
		//파라미터 생성자 이용2
		String[] casting3 = {"혜선","나나"};
		Movie m3 = new Movie("피자 먹고싶다","사로룰");
		m3.setCasting(casting3);
		m3.setRelease(release);
		System.out.println(m3.movieInfo());
		
		//파라미터 생성자 이용3
		String[] casting4 = {"캐스팅","어렵다","김선호","사랑해"};
		Movie m4 = new Movie("햄버거 냠냠","사로룰",casting4);
		m4.setRelease(release);
		System.out.println(m4.movieInfo());
		
		//파라미터 생성자 이용4
		String[] casting5 = {"서현진","김선호","사랑해"};
		Movie m5 = new Movie("파송송 계란탁","사로룰",casting5,release);
		System.out.println(m5.movieInfo());
	}

}
