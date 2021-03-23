package kh.java.collection.map;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

/**
 * Map - <key,value> 한쌍
 * - key를 통해 value를 접근(key : 중복x / value : 중복 o)
 * 
 */
public class HashMapTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		HashMapTest h = new HashMapTest();
		h.test1();
	}
	public void test1() {
		//<K,V>두개의 제네린ㄱ 사용
		// k => Integer만 허용. v => String만 허용
		
		//Map은 collection 하위 클래스가 아니므로 collection을 다루는것과는 다름
		HashMap<Integer,String> map1 = new HashMap();
		Map<Character, Person> map2 = new HashMap();
		map1.put(1, "홍길동");
		map1.put(2, "신사임당");
		map1.put(3, "세종대왕");
		
		System.out.println(map1);
		
		map2.put('a',new Person("Adia"));
		map2.put('b',new Person("Bob"));
		map2.put('c',new Person("Clain"));
		map2.put('d',new Person("David"));
		System.out.println(map2);
		
		//equals&hashCode Override을 전재로 한다.
		//특정키 존재 확인 : containKey
		System.out.println(map2.containsKey('b'));
		
		//특정 값 존재 확인 : containValue
		System.out.println(map2.containsValue(new Person("David")));
		
		Person p1 = map2.get('a');
	}
	
	/**
	 * 전체요소 열람하기
	 * 1. key 값을 set에 담기
	 * 2. key,value 한쌍을 set에 담기
	 */
	public void test2() {
		Map<String, Person> map = new HashMap();
		
		//2.Map.Entry(key,value한쌍) Set
		Set<Entry<String,Person>> entrySet = map.entrySet();
		//entrySet + forEach
		for(Entry<String,Person> entry : entrySet) {
			String key = entry.getKey();
			Person value = entry.getValue();
			System.out.println("key = " + key+", value = "+value);
		}
		
		//entryset() : Map의 인터페이스
		//entrySet+ iterator
		Iterator<Entry<String,Person>> iter = entrySet.iterator();
		while(iter.hasNext()) {
			Entry<String,Person> e = iter.next();
			String key = e.getKey();
			Person value = e.getValue();
			System.out.println("key = " + key+", value = "+value);
		}
	}

}
