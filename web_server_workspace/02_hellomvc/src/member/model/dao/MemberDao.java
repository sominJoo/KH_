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
				member.setBirthday(rs.getString("birthday"));
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
	
}
