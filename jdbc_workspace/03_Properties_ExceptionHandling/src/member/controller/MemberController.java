package member.controller;

import java.util.List;

import member.exception.MemberException;
import member.model.service.MemberService;
import member.model.vo.Member;
import member.view.MemberMenu;

public class MemberController {
	private MemberService memberService = new MemberService();
	
	public List<Member> selectAll(){
		List<Member> list = null;
		try {
			list = memberService.selectAll();
		} catch (MemberException e) {
			// 서버 로깅 작업
			// 관리자 이메일 알림
			//컨트롤러에서 예외처리 필수!!
			new MemberMenu().displayError(e.getMessage() + " : 관리자에게 문의하세요");
		}
		return list;
	}
	
	public int insertMember(Member member) {
		int result = 0;
		try {
			result = memberService.insertMember(member);
		} catch (MemberException e) {
			new MemberMenu().displayError(e.getMessage() + " : 관리자에게 문의하세요");
		}
		return result;
	}

	public List<Member> selectId(String memberId) {
		List<Member> list = null;
		try {
			list= memberService.selectId(memberId);
		} catch (MemberException e) {
			new MemberMenu().displayError(e.getMessage() + " : 관리자에게 문의하세요");
		}
		return list;
	}

	public List<Member> selectName(String memberName) {
		return memberService.selectName(memberName);
	}

	public int deleteMember(Member member) {
		int result = 0;
		try {
			result =  memberService.deleteMember(member);
		} catch (MemberException e) {
			new MemberMenu().displayError(e.getMessage() + " : 관리자에게 문의하세요");
		}
		return result;
	}
	
	public int updateMember(Member member) {
		int result = 0;
		try {
			result = memberService.updateMember(member);
		} catch (MemberException e) {
			new MemberMenu().displayError(e.getMessage() + " : 관리자에게 문의하세요");
		}
		return result;
	}

	public List<Member> selectDeleteMember(String memberId) {
		List<Member> list = null;
		try {
			list= memberService.selectDeleteMember(memberId);
		} catch (MemberException e) {
			new MemberMenu().displayError(e.getMessage() + " : 관리자에게 문의하세요");
		}
		return list;
	}

	
	
	
}
