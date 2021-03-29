package member.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import common.JDBCTemplate;
import static common.JDBCTemplate.close;
import member.model.vo.Member;

/**
 * DAO 클래스
 * - DB 조회, 삽입, 수정을 함
 * @author ddomin
 */
public class MemberDao{
	Properties prop = new Properties();
	
	public MemberDao() {
		String fileName = JDBCTemplate.class 		//class객체
				.getResource("/sql/member/member-query.properties")	//url 객체
				.getPath();		//절대경로 String 객체
		try {
			prop.load(new FileReader(fileName));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	public Member selectOne(Connection conn, String memberId) {
		Member member = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("selectOne");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				member = new Member();
				member.setMemberId(rs.getString("member_id"));
				member.setPassword(rs.getString("password"));
				member.setMemberName(rs.getString("member_name"));
				member.setMemberRole(rs.getString("member_role"));
				member.setGender(rs.getString("gender"));
				member.setBirthday(rs.getDate("birthday"));
				member.setEmail(rs.getString("email"));
				member.setPhone(rs.getString("phone"));
				member.setAddress(rs.getString("address"));
				member.setHobby(rs.getString("hobby"));
				member.setEnrollDate(rs.getDate("enroll_date"));
			}
			
		} catch (SQLException e) {
			e.getMessage();
		} finally {
			close(rs);
			close(pstmt);
		}
			
		return member;
	}



	public int insertMember(Connection conn, Member member) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = prop.getProperty("insertMember"); 
		
		try {
			//미완성쿼리문을 가지고 객체생성.
			pstmt = conn.prepareStatement(query);
			//쿼리문미완성
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getMemberName());
			pstmt.setString(4, member.getMemberRole());
			pstmt.setString(5, member.getGender());
			pstmt.setDate(6, member.getBirthday());
			pstmt.setString(7, member.getEmail());
			pstmt.setString(8, member.getPhone());
			pstmt.setString(9, member.getAddress());
			pstmt.setString(10, member.getHobby());
			
			//쿼리문실행 : 완성된 쿼리를 가지고 있는 pstmt실행(파라미터 없음)
			//DML은 executeUpdate()
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
}
