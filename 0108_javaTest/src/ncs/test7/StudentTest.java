package ncs.test7;

import java.util.ArrayList;
import java.util.List;

public class StudentTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<Student> sList = new ArrayList<>();
		sList.add(new Student("홍길순",25,171,81,"201401","영어영문학"));
		sList.add(new Student("한사랑",23,183,72,"201402","건축학"));
		sList.add(new Student("임꺽정",26,175,65,"201403","체육학"));
		
		for(Student s : sList)
			System.out.println(s.toString());
		
	}

}
