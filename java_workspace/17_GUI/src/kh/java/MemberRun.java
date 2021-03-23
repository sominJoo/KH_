package kh.java;

import java.util.HashSet;

public class MemberRun {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Member m1 = new Member("hog","123","홍");
		Member m2 = new Member("asdf","456","길");
		Member m3 = new Member("ff","789","동");
		
		HashSet<Member> set = new HashSet<>();
		set.add(m1);
		set.add(m2);
		set.add(m3);
		
		
	}

}
