package member.controller;

import java.util.List;

import member.model.dao.MemberDAO;
import member.model.vo.Member;


/**
 * 
 * MVC패턴으로 제작 시 controller가 제어의 시작점이자 전체 흐름을 제어
 * 
 * view -> controller -> dao -> vo -> dao -> controller -> view
 * 
 */
public class MemberController {
	private MemberDAO memberDAO = new MemberDAO();

	public int insertMember(Member member) {
		// TODO Auto-generated method stub
		return memberDAO.insertMember(member);
	}

	public List<Member> selectAll() {
		return memberDAO.selectAll();
	}

	public Member selectOne(String memberId) {
		// TODO Auto-generated method stub
		return memberDAO.selectOne(memberId);
	}

	public List<Member> selectName(String memberName) {
		// TODO Auto-generated method stub
		return memberDAO.selectName(memberName);
	}

	public int updateMember(Member member) {
		// TODO Auto-generated method stub
		return memberDAO.updateMember(member);
	}

	public int deleteMember(Member member) {
		// TODO Auto-generated method stub
		return memberDAO.deleteMember(member);
	}
}
