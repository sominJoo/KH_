package kh.java.collection.list;

import java.util.Comparator;

public class StudentNameAscending implements Comparator<Student>{

	@Override
	public int compare(Student o1, Student o2) {
		// TODO Auto-generated method stub
		return o1.getName().compareTo(o2.getName());
	}

}
