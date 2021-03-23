package com.oop.method.nonstatic;

public class Run {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		NonStaticSample n = new NonStaticSample();
		//1
		n.printLottoNumbers();
		
		//2
		n.outputChar(9, 'x');
		
		//3
		char c = n.alphabet();
		System.out.println(c);
		
		//4
		String sparam = "javaloveJAVALOVE";
		String result = n.mySubstring(sparam, 0, 4);
		System.out.println(result);
	}

}
