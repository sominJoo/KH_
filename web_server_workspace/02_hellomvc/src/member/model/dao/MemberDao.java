package member.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
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



	public int updateMember(Connection conn, Member member) {
		int result=0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateMember");
		try {
			//미완성쿼리문을 가지고 객체생성.
			pstmt = conn.prepareStatement(sql);
			//쿼리문미완성
			pstmt.setString(1, member.getMemberName());
			pstmt.setString(2, member.getMemberRole());
			pstmt.setString(3, member.getGender());
			pstmt.setDate(4, member.getBirthday());
			pstmt.setString(5, member.getEmail());
			pstmt.setString(6, member.getPhone());
			pstmt.setString(7, member.getAddress());
			pstmt.setString(8, member.getHobby());
			
			pstmt.setString(9, member.getMemberId());
			
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



	public int deleteMember(Connection conn, String memberId) {
		int result=0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMember");
		try {
			//미완성쿼리문을 가지고 객체생성.
			pstmt = conn.prepareStatement(sql);
			//쿼리문미완성			
			pstmt.setString(1, memberId);
			
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



	public int updatePassword(Connection conn, Member member) {
		int result=0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updatePassword");
		try {
			//미완성쿼리문을 가지고 객체생성.
			pstmt = conn.prepareStatement(sql);
			//쿼리문미완성
			pstmt.setString(1, member.getPassword());
			pstmt.setString(2, member.getMemberId());
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



	public List<Member> selectList(Connection conn) {
		List<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectAll");
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Member member = new Member();
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
				list.add(member);				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}



	public int updateMemberRole(Connection conn, String memberId, String memberRole) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("updateMemberRole");
		try {
			//미완성쿼리문을 가지고 객체생성.
			pstmt = conn.prepareStatement(sql);
			//쿼리문미완성
			pstmt.setString(1, memberRole);
			pstmt.setString(2, memberId);
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





	public List<Member> selectList(Connection conn, int start, int end) {
		List<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("selectPagedList");
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Member member = new Member();
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
				list.add(member);				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}



	public int selectMemberCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String sql = prop.getProperty("selectMemberCount");
		int totalContents =0;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				totalContents = rs.getInt(1);			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return totalContents;
	}


	public List<Member> searchMember(Connection conn, Map<String, String> param, int start, int end) {
		List<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql= sql_query(prop.getProperty("searchMember"), param);
		sql +=  " ) M where rnum between " +  start + " and "+ end;
		
		System.out.println("sql@searchMember = "+sql);
		try {
			pstmt = conn.prepareStatement(sql);			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Member member = new Member();
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
				list.add(member);				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}


	public int searchMemberCount(Connection conn, Map<String, String> param) {
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		String sql = sql_query(prop.getProperty("searchMemberCount"),param);
		int totalContents =0;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				totalContents = rs.getInt(1);
			}
			System.out.println("totalContens@searchMemberCount = " +totalContents);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return totalContents;
	}
	
	
	
	public String sql_query(String sql, Map<String, String> param) {
		//param의 searchType memberId인 경우 : select * from member where member_id like %?%
		//param의 searchType memberName인 경우 : select * from member where member_name like %?%
		//param의 searchType gender인 경우 : select * from member where  gender =?
		
		switch(String.valueOf(param.get("searchType"))) {
		case "memberId" 	: sql += " member_id like '%"+ param.get("searchKeyword") + "%'"; break;
		case "memberName" 	: sql += " member_name like '%"+ param.get("searchKeyword") + "%'";break;
		case "gender" 		: sql +=  " gender = '"+ param.get("searchKeyword") + "'"; break;
		}
		System.out.println(param);
		System.out.println(sql);
		return sql;
	}
}
