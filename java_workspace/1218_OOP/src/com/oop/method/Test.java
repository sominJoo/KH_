package com.oop.method;

public class Test {
	 int a = 100;
     static int s = 99;
     
     public static void main(String[] args) {
         Test t = new Test();
         t.test1();
         t.test2();
         
         Test t3 = new Test();
         t.test3(t3);
         
         System.out.println(t3.a);
         System.out.println();
         
         
         t.test4(t);
             
     }
     public void test1() {
    	 //지역변수 할당
         int a = 1000;
         int s = 999;
         System.out.println(this.a); //자기 참조로 전역변수 호출 (100)
         System.out.println(Test.s); //전역변수 호출(99)
         System.out.println();
     }

     
     
     //모르겠음
     public void test2() {
         Test t = new Test(); //Test 객체 할당
         t.a = 1000; //새로운 객체의 a를 1000으로 할당
         System.out.println(a); //그냥 전역변수 a를 호출(100)
         System.out.println();
     }
     
     //모르겠음
     public void test3(Test t) {
         t.a = 10;
         this.a = 200;
         System.out.println(t.a);
         System.out.println();
     }
     
     //모르겠음
     public void test4(Test t) {
         t.a = 1000;
         System.out.println(this.a);
     }
}
