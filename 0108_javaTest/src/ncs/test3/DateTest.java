package ncs.test3;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class DateTest {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SimpleDateFormat df = new SimpleDateFormat("yyyy년 MM월 dd일");
		try {
			Date d = df.parse("1987년 05월 27일");
			Calendar cal = new GregorianCalendar();
			cal.setTime(d);
			int year1 = cal.get(Calendar.YEAR);
			int dayNum = cal.get(Calendar.DAY_OF_WEEK);
			String dayName="";
			switch (dayNum) {
		     case 1: dayName = "일요일"; break;
		     case 2: dayName = "월요일"; break;
		     case 3: dayName = "화요일"; break;
		     case 4: dayName = "수요일"; break;
		     case 5: dayName = "목요일"; break;
		     case 6: dayName = "금요일"; break;
		     case 7: dayName = "토요일"; break;
			}
			System.out.println("생일 : "+df.format(d)+" "+dayName);
			cal = Calendar.getInstance();
			int year2 = cal.get(Calendar.YEAR);
			System.out.println("현재 : "+df.format(cal.getTime()));
			
			System.out.println("나이 : "+(year2-year1-1));
		
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
