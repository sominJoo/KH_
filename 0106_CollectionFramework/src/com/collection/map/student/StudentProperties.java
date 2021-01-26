package com.collection.map.student;

import java.io.FileOutputStream;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;
import java.util.StringTokenizer;


public class StudentProperties {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		StudentProperties s= new StudentProperties();
		List<Student> list = s.readFile();
		s.printConsole(list);
	}

	public List<Student> readFile(){
		Properties prop = new Properties();
		List<Student> list = new ArrayList<Student>();
		try {
			prop.load(new FileReader("C:\\Users\\ddomin\\eclipse-workspace\\Project-Root\\score.txt"));
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		StringTokenizer st;
		//name별 요소 출력(1라인당
		Enumeration<?> en = prop.propertyNames();
		while(en.hasMoreElements()) {
			String name = (String) en.nextElement();
			String data = prop.getProperty(name);	
			
			st = new StringTokenizer(data,",");	
			while(st.hasMoreTokens()) {
				list.add(new Student(Integer.parseInt(st.nextToken()),st.nextToken(),
						Integer.parseInt(st.nextToken()),Integer.parseInt(st.nextToken()),Integer.parseInt(st.nextToken())));
			}
		}
		return list;
	}
	public void printConsole(List<Student> sList){
		for(Student s : sList) {
			System.out.println(s.toString());
			System.out.println("합계"+s.getSum());
			System.out.println("평균"+s.getAvg());
		}
	}
	
	public void saveXMLFile(List<Student> sList){
		//다시 로드해 저장
	}
}
