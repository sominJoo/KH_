package member.controller;

import java.util.List;

import member.model.service.MemberService;
import member.model.vo.Member;

public class MemberController {
	private MemberService memberService = new MemberService();
	
	public List<Member> selectAll(){
		return memberService.selectAll();
	}
	
	public int insertMember(Member member) {
		return memberService.insertMember(member);
	}

	public List<Member> selectId(String member_id) {
		return memberService.selectId(member_id);
	}

	public List<Member> selectName(String memberName) {
		return memberService.selectName(memberName);
	}

	public int delectMember(Member member) {
		return memberService.delectMember(member);
	}
	
	public int updateMember(Member member) {
		return memberService.updateMember(member);
	}

}
