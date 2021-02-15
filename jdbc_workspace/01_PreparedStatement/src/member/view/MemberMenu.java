package member.view;

import java.util.List;
import java.util.Scanner;

import member.controller.MemberController;
import member.model.vo.Member;

public class MemberMenu {
	private MemberController memberController = new MemberController();
	private Scanner sc = new Scanner(System.in);
	
	
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
			int choice = sc.nextInt();
			String msg = null;
			String memberId = null;
			String memberName =null;
			Member member =new Member();
			switch(choice) {
				case 1: 	//전체조회
					list = memberController.selectAll();
					displayMemberList(list);
					break;
				case 2: 	//id 조회
					memberId = inputMemberId();
					member = memberController.selectOne(memberId);
					displayMember(member);
					break;
				case 3:		//회원 이름조회(이름 부분조회 가능)
					memberName = inputMemberName();
					list = memberController.selectName(memberName);
					displayMemberList(list);
					break;
				case 4: 
					//1.신규회원 정보 입력 -> Member 객체
					member = inputMember();
					//2.controller에 회원가입 요청(메소드 호출) -> int 리턴(처리된 행의 개수)
					result = memberController.insertMember(member);
					//3.int에 따른 분기처리
					msg = result >0 ? "회원가입 성공!" : "회원가입 실패";
					displayMsg(msg);
					break; 
				case 5: 		//5.회원정보변경
					member = updateMember();
					result = memberController.updateMember(member);
					msg = result >0 ? "회원 정보 변경 성공!" : "회원 정보 변경 실패";
					displayMsg(msg);
					break;
				case 6: 		//6.회원탈퇴
					member = deleteMemberId();
					result = memberController.deleteMember(member);
					msg = result >0 ? "회원 탈퇴 성공!" : "회원 탈퇴 실패";
					displayMsg(msg);
					break;
				case 0: 
					System.out.print("정말로 끝내시겠습니까?(y/n) : ");
					if(sc.next().charAt(0) == 'y')
						return;	//현재 메소드를 호출한 곳으로 돌아감
					break;
				default: 
			}
			
			
		}
		
		
	}
	/**
	 * 1.회원 전체조회
	 * DB에서 조회된 회원객체 n개를 출력
	 * @param list
	 */
	private void displayMemberList(List<Member> list) {
		// TODO Auto-generated method stub
		if(list == null || list.isEmpty()) {
			System.out.println("조회된 행이 없습니다.");
		}
		else {
			System.out.println("**********************************************************************************************************************");
			for(Member m : list)
				System.out.println(m);
			System.out.println("**********************************************************************************************************************");
		}
	}
	
	/**
	 * 2.회원 아이디조회
	 * memberid를 입력받음
	 * @return memberId
	 */
	private String inputMemberId() {
		// TODO Auto-generated method stub
		System.out.print("조회할 ID를 입력하세요 : ");
		String memberId = sc.next();
		return memberId;
	}

	
	/**
	 * 2.회원 아이디조회
	 * 3.회원 이름 조회
	 * DB에서 조회한 1명의 회원 출력
	 * @param member
	 */
	private void displayMember(Member member) {
		// TODO Auto-generated method stub
		if(member == null)
			System.out.println(">>> 회원 없음");
		else {
			System.out.println("**********************************************************************************************************************");
			System.out.println(member);
			System.out.println("**********************************************************************************************************************");
		}
	}

	
	/**
	 * 3.회원 이름 조회
	 * 회원 이름을 입력받음
	 * @return memberName
	 */
	private String inputMemberName() {
		// TODO Auto-generated method stub
		System.out.print("조회할 이름를 입력하세요 : ");
		String memberName = sc.next();
		return memberName;
	}

	/**
	 * 4.회원 가입
	 * 신규회원 정보 입력받음
	 * @return
	 */
	private Member inputMember() {
		Member member = new Member();
		System.out.println("새로운 회원정보를 입력하세요.");
		
		System.out.print("아이디 : ");
		member.setMemberId(sc.next());
		System.out.print("비밀번호 : ");
		member.setPassword(sc.next());
		System.out.print("이름 : ");
		member.setMemberName(sc.next());
		
		System.out.print("나이 : ");
		member.setAge(sc.nextInt());
		System.out.print("성별(M/F) : ");
		member.setGender(String.valueOf(sc.next().toUpperCase().charAt(0)));
		System.out.print("이메일 : ");
		member.setEmail(sc.next());
		System.out.print("전화번호(-제외) : ");
		member.setPhone(sc.next());
		sc.nextLine();	//버퍼에 남은 개행문자 날리기용	
		System.out.print("주소 : ");
		member.setAddress(sc.nextLine());
		System.out.print("취미(,로 나열할 것) : ");
		member.setHobby(sc.next());
		
		return member;
	}

	/**
	 * 4.회원 가입
	 * DML 처리결과 통보
	 * @param msg
	 */
	private void displayMsg(String msg) {
		// TODO Auto-generated method stub
		System.out.println(">>>처리결과 : "+msg);
	}
	
	/**
	 * 5.회원 정보 변경
	 * @return member
	 */
	private Member updateMember() {
		// 회원정보변경은 암호, 이메일, 전화번호, 주소, 취미를 일괄변경하도록한다.
		Member member = new Member();
		System.out.println("수정할 회원ID를 입력하세요.");
		
		System.out.print("아이디 : ");
		member.setMemberId(sc.next());
		System.out.println();
		
		System.out.println("수정할 회원정보를 입력하세요");
		System.out.print("비밀번호 : ");
		member.setPassword(sc.next());		
		System.out.print("이메일 : ");
		member.setEmail(sc.next());
		System.out.print("전화번호(-제외) : ");
		member.setPhone(sc.next());
		sc.nextLine();	//버퍼에 남은 개행문자 날리기용	
		System.out.print("주소 : ");
		member.setAddress(sc.nextLine());
		System.out.print("취미(,로 나열할 것) : ");
		member.setHobby(sc.next());
		
		return member;
	}

	/**
	 * 6.회원 탈퇴
	 * @return member
	 */
	private Member deleteMemberId() {
		// 회원정보변경은 암호, 이메일, 전화번호, 주소, 취미를 일괄변경하도록한다.
		Member member = new Member();
		System.out.println("탈퇴할 회원ID와 비밀번호 를 입력하세요.");
		
		System.out.print("아이디 : ");
		member.setMemberId(sc.next());
		System.out.print("비밀번호 : ");
		member.setPassword(sc.next());		
		
		return member;
	}

}
