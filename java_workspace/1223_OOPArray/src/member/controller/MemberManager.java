package member.controller;

import java.util.ArrayList;

import member.model.vo.Gold;
import member.model.vo.Silver;
import member.model.vo.VVip;
import member.model.vo.Vip;



/**
 * 회원 데이터 저장 및 관리 class
 */
public class MemberManager {
	public static final int MAX =10;
	private Silver[] s = new Silver[MAX];
	private Gold[] g = new Gold[MAX];
	private Vip[] v = new Vip[MAX];
	private VVip[] vv = new VVip[MAX];
	
	
	private int silverIndex = 0;
	private int goldIndex =0;
	private int vipIndex =0;
	private int vvipIndex =0;
	
	public void silverInsert(Silver silver) {
		s[silverIndex++] = silver;
	}
	public void goldInsert(Gold gold) {
		g[goldIndex++] = gold;
	}
	public void printData() {
		String str = "--------------<<회원정보>>--------------\n"
				+"이름\t  등급\t  포인트\t 이자포인트\n"
				+"-----------------------------------------";
		System.out.println(str);
		
		//silver 등급 출력
		for(Silver sArr : s) {
			if(sArr==null)
				break;
			else
				System.out.printf("%s\t %s\t %d\t %.2f\n",
						sArr.getName(),sArr.getGrade(),(int)sArr.getPoint(),sArr.getPlusPoint());		
		}
		
		//gold 등급 출력
		for(Gold gArr : g) { 
			if(gArr==null)
				break;
			else
				System.out.printf("%s\t %s\t %d\t %.2f\n",
						gArr.getName(),gArr.getGrade(),(int)gArr.getPoint(),gArr.getPlusPoint());
		}
		
		//vip 등급 출력
		for(Vip vArr : v) {
			if(vArr==null)
				break;
			else
				System.out.printf("%s\t %s\t %d\t %.2f\n",
						vArr.getName(),vArr.getGrade(),(int)vArr.getPoint(),vArr.getPulsPoint());	
		}
		
		//vvip 등급 출력
		for(VVip vvArr : vv) {
			if(vvArr==null)
				break;
			else
				System.out.printf("%s\t %s\t %d\t %.2f\n",
						vvArr.getName(),vvArr.getGrade(),(int)vvArr.getPoint(),vvArr.getPulsPoint());	
		}
	}

	public void vipInsert(Vip vip) {
		v[vipIndex++] = vip; 
	}
	public void vvipInsert(VVip vvip) {
		vv[vvipIndex++] = vvip; 
	}
	
}
