package member.model.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

import common.JDBCTemplate;
import member.exception.MemberException;
import member.model.dao.MemberDAO;
import member.model.vo.Member;

/**
 * Service
 * 1.DriverClass- 최초 1회
 * 2.connection 
 * 2.1 자동 커밋  설정
 * ------dao 요청-------
 * 6.트랜젝션 처리 dml commit/rollback
 * 7.자원반남
 * 
 * @author ddomin
 *
 */
public class MemberService extends JDBCTemplate{
	private MemberDAO dao = new MemberDAO();
	List<Member> list = null;

	public List<Member> selectAll(){
		Connection conn =getConnection();
		list = dao.selectAll(conn);
		close(conn);
		return list;
	}

	
	public int insertMember(Member member) {
		Connection conn = getConnection();
		int result = dao.insertMemebr(conn,member);
		if(result >0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;			
	}


	public List<Member> selectId(String member_id) {
		Connection conn = getConnection();
		list = dao.selectId(conn,member_id);
		close(conn);
		return list;
	}


	public List<Member> selectName(String memberName) {
		Connection conn = getConnection();
		list = dao.selectName(conn,memberName);
		close(conn);
		return list;
	}


	public int deleteMember(Member member) {
		Connection conn = getConnection();
		int result = dao.deleteMember(conn,member);
		close(conn);
		return result;
	}
	
	public int updateMember(Member member) {
		Connection conn = getConnection();
		int result = dao.updateMember(conn,member);
		close(conn);
		return result;
	}


	public List<Member> selectDeleteMember(String memberId) {
		Connection conn = getConnection();
		List<Member> list = dao.selectDeleteMember(conn, memberId);
		close(conn);
		return list;
	}
	
}
