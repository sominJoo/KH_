package com.oop.movie.model.entity;

import java.awt.dnd.DragGestureEvent;
import java.util.Arrays;
import java.util.Calendar;

public class Movie {
	private String movieTitle;
	private String director;
	private String[] casting = new String[5];
	private Calendar release;
	public Movie() {	}
	public Movie(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public Movie(String movieTitle, String director) {
		this(movieTitle);
		this.director = director;
	}
	public Movie(String movieTitle, String director,String[] casting) {
		this(movieTitle, director);
		this.casting = casting;
	}
	public Movie(String movieTitle, String director,String[] casting,Calendar release) {
		this(movieTitle, director, casting);
		this.release = release;
	}
	
	//영화 정보 return
	public String movieInfo() {
		int year = release.get(Calendar.YEAR);
		int month = release.get(Calendar.MONTH);
		int date = release.get(Calendar.DATE);
		
		
		String str = "영화 이름 : " + movieTitle +"\n"
				+"영화 감독 : " + director +"\n"
				+"영화 배우 : " + Arrays.toString(casting) +"\n"
				+"영화 개봉일 : " + year+"/"+month+"/"+date +"\n";
		
		return str;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String[] getCasting() {
		return casting;
	}
	public void setCasting(String[] casting) {
		this.casting = casting;
	}
	public Calendar getRelease() {
		return release;
	}
	public void setRelease(Calendar release) {
		this.release = release;
	}
	
	
	
}
