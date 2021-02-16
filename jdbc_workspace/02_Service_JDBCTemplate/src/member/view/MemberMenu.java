package member.view;

import java.util.List;
import java.util.Scanner;

import member.controller.MemberController;
import member.model.vo.Member;

public class MemberMenu {
	Scanner sc= new Scanner(System.in);
	private MemberController memberController = new MemberController();
	
	public void mainMenu() {
		String menu = "========== 회원 관리 프로그램 ==========\n"
					+ "1.회원 전체조회\n"
					+ "2.회원 아이디조회\n" 
					+ "3.회원 이름조회\n" 
					+ "4.회원 가입\n" 
					+ "5.회원 정보변경\n" 
					+ "6.회원 탈퇴\n" 
					+ "0.프로그램 끝내기\n"
					+ "----------------------------------\n"
					+ "선택 : "; 
		List<Member> list = null;
		int result =0;
		while(true) {
			System.out.print(menu);
			String choice = sc.nextLine();
			Member member = null;
			String msg = null;
			switch(choice) {
				case "1": 
					list = memberController.selectAll();
					displayMemberList(list);
					break;
				case "2": 
					String member_id = inputMemberId();
					list = memberController.selectId(member_id);
					displayMemberList(list);
					break;
				case "3":
					String memberName = inputMemberName();
					list = memberController.selectName(memberName);
					displayMemberList(list);
					break;
				case "4": 
					member = inputMember();
					result = memberController.insertMember(member);
					msg = result >0 ? "회원가입 성공" : "회원가입 실패";
					displayMsg(msg);
					break; 
				case "5": 
					//1. 아이디를 입력받음
					String memberId = inputMemberId();
					list = memberController.selectId(memberId);
					if(list != null && !list.isEmpty()) 	//결과가 존재하면
						subMenu(memberId);
					else
						System.out.println(">>>> 회원정보 없음");
					
					break;
				case "6": 	
					member = inputMemberId_Pw();
					result = memberController.delectMember(member);
					msg = result > 0 ? "회원 탈퇴 성공" : "회원 탈퇴 실패";
					displayMsg(msg);
					break;
				case "0": 
					System.out.print("정말로 끝내시겠습니까?(y/n) : ");
					if(sc.nextLine().charAt(0) == 'y')
						return;	//현재 메소드를 호출한 곳으로 돌아감
					break;
				default: 
			}
			
			
		}
		
		
	}
	
	public void subMenu(String memberId) {
		String menu = "========== 회원 관리 프로그램 ==========\n"
				+ "1.암호 변경\n"
				+ "2.이메일 변경\n" 
				+ "3.전화번호 변경\n" 
				+ "4.주소 변경\n" 
				+ "9.메인메뉴 돌아가기\n" 
				+ "----------------------------------\n"
				+ "선택 : "; 
	while(true) {
		System.out.print(menu);
		String choice = sc.nextLine();
		int result =0;
		Member member = new Member();
		member.setMemberId(memberId);
		switch(choice) {
			case "1": 
				System.out.print("변경할 암호를 입력하세요 : ");
				member.setPassword(sc.nextLine());
				result = memberController.updateMember(member);
				check(result);
				break;
			case "2":  
				System.out.print("변경할 이메일를 입력하세요 : ");
				member.setEmail(sc.nextLine());
				result = memberController.updateMember(member);
				check(result);
				break;
			case "3": 
				System.out.print("변경할 전화번호를 입력하세요(-제외) : ");
				member.setPhone(sc.nextLine());
				result = memberController.updateMember(member);
				check(result);
				break;
			case "4":  
				System.out.print("변경할 주소를 입력하세요 : ");
				member.setAddress(sc.nextLine());
				result = memberController.updateMember(member);
				check(result);
				break; 
			case "9": 
				System.out.print("메인 메뉴로 돌아가시겠습니까?(y/n) : ");
				if(sc.nextLine().charAt(0) == 'y')
					return;	//현재 메소드를 호출한 곳으로 돌아감
				break;
			default: 
			}
		}
	}
	private void check(int result) {
		String msg = result >0 ? "정보 변경 성공" : "정보 변경 실패";
		displayMsg(msg);
	}
	private Member inputMemberId_Pw() {
		Member member = new Member();
		System.out.println("회원 id와 비밀번호를 입력하세요.");
		System.out.print("ID : ");
		member.setMemberId(sc.nextLine());
		System.out.print("비밀번호 : ");
		member.setPassword(sc.nextLine());
		return member;
	}

	private String inputMemberName() {
		System.out.println("회원 이름를 입력하세요.");
		System.out.print("이름 : ");
		return sc.nextLine();
	}

	private String inputMemberId() {
		System.out.println("회원 ID를 입력하세요.");
		System.out.print("아이디 : ");
		return sc.nextLine();
	}

	private void displayMsg(String msg) {
		// TODO Auto-generated method stub
		System.out.println(">>>> "+msg);
	}

	private Member inputMember() {
		Member member = new Member();
		System.out.println("새로운 회원정보를 입력하세요.");
		
		System.out.print("아이디 : ");
		member.setMemberId(sc.nextLine());
		System.out.print("비밀번호 : ");
		member.setPassword(sc.nextLine());
		System.out.print("이름 : ");
		member.setMemberName(sc.nextLine());
		
		System.out.print("나이 : ");
		member.setAge(sc.nextInt());
		System.out.print("성별(M/F) : ");
		member.setGender(String.valueOf(sc.nextLine().toUpperCase().charAt(0)));
		System.out.print("이메일 : ");
		member.setEmail(sc.nextLine());
		System.out.print("전화번호(-제외) : ");
		member.setPhone(sc.nextLine());
		sc.nextLine();	//버퍼에 남은 개행문자 날리기용	
		System.out.print("주소 : ");
		member.setAddress(sc.nextLine());
		System.out.print("취미(,로 나열할 것) : ");
		member.setHobby(sc.nextLine());
		
		return member;
	}

	private void displayMemberList(List<Member> list) {
		// TODO Auto-generated method stub
		if(list !=null && !list.isEmpty()) {
			System.out.println("===========================================================================");
			for(int i=0 ; i<list.size() ; i++)
				System.out.println((i+1)+" : " + list.get(i));
			System.out.println("===========================================================================");
		}
		else
			System.out.println("회원정보 없음");
	}
}
