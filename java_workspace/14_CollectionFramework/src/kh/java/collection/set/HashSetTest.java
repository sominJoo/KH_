package kh.java.collection.set;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class HashSetTest {
	public static void main(String[] args) {
		HashSetTest h = new  HashSetTest();
//		h.test1();
//		h.test2();
		h.test3();
	}

	private void test1() {
		// TODO Auto-generated method stub
		HashSet<Integer> set1 = new HashSet();
		Set<String>  set2 = new HashSet();
		Collection<Integer>  set3  = new HashSet();
		
		//요소 추가
		set2.add("안녕");
		set2.add("안녕");		//중복은 제외된다.
		System.out.println(set2);
		
		//인덱스를 통한 요소 가져오기 지원x
		//set2.get(2);
		
		//전체 열람
		//1. 일반 for문 불가.for-each문 사용
		
		//2.iterator 객체 사용
		Iterator<String> iter = set2.iterator();
		while(iter.hasNext()) {
			String name = iter.next();
			System.out.println(name);
		}
		
		//삭제 :equals,hashcode overriding필수
	}
	
	
	/**
	 * List -> set : 중복 제거
	 * 
	 * Set -> List : 순서필요(정렬)
	 */
	public void test2() {
		List<Integer> list = new ArrayList<>();
		list.add(1);
		list.add(2);
		list.add(3);
		list.add(1);
		list.add(3);
		list.add(2);
		System.out.println(list);
		
		//set 변환
		Set<Integer> set = new HashSet<>(list);
		System.out.println(set);
		
		//list 변환 : 내림차순
		list = new ArrayList<Integer>(set);
		Comparator<Integer> comp = Collections.reverseOrder();
		Collections.sort(list,comp);
		System.out.println(list);
		
	}
	
	public void test3() {
		Set<Person> set = new HashSet<Person>();
		set.add(new Person("홍길동"));
		set.add(new Person("신사임당"));
		
		set.add(new Person("홍길동"));		// => 중복 제거 안됨 : equals,hashcode overriding가 안되어서 주소값 비교
		System.out.println(set);
		
	}
}
