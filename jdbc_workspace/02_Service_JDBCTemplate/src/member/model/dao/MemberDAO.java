package member.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCTemplate;
import member.model.vo.Member;

public class MemberDAO extends JDBCTemplate{

	/**
	 * DAO
	 * 
	 * 3. preparedStatement
	 * 4. 실행
	 * 5. 자원반남
	 * @param conn
	 * @return
	 */
	public List<Member> selectAll(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql ="select * from member order by enroll_date desc";
		List<Member> list = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			//5.응답처리(rs에 table이 대임된다.)
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Member member = new Member();
				member.setMemberId(rs.getString("member_id"));
				member.setPassword(rs.getString("password"));
				member.setMemberName(rs.getString("member_name"));
				member.setGender(rs.getString("gender"));
				member.setAge(rs.getInt("age"));
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

	public int insertMemebr(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		int result =0;
		String sql = "insert into member values(?, ?, ?, ?, ?, ?, ?, ?, ?, default)";
		try {			
			//4.미완성 쿼리, 값대입
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getMemberName());
			pstmt.setString(4, member.getGender());
			pstmt.setInt(5, member.getAge());
			pstmt.setString(6, member.getEmail());
			pstmt.setString(7, member.getPhone());
			pstmt.setString(8, member.getAddress());
			pstmt.setString(9, member.getHobby());

			//5.객체 실행, 응답처리
			result = pstmt.executeUpdate();//DML(insert, update, delete)인 경우 update. DQL(select)인 경우 Query

			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//자원 반납(생성의 역순) 따로 해야 안전함.
			close(pstmt);
			
		}
		return result;
	}

	public List<Member> selectId(Connection conn, String member_id) {
		List<Member> list = new ArrayList<>();
		PreparedStatement pstmt= null;
		ResultSet rs = null;
		String sql = "select * from member where member_id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member_id);
			
			//5.응답처리(rs에 table이 대임된다.)
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				Member member = new Member();
				member.setMemberId(rs.getString("member_id"));
				member.setPassword(rs.getString("password"));
				member.setMemberName(rs.getString("member_name"));
				member.setGender(rs.getString("gender"));
				member.setAge(rs.getInt("age"));
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

	public List<Member> selectName(Connection conn, String memberName) {
		List<Member> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from member where member_name like '%'||?||'%'";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberName);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Member member = new Member();
				member.setMemberId(rs.getString("member_id"));
				member.setPassword(rs.getString("password"));
				member.setMemberName(rs.getString("member_name"));
				member.setGender(rs.getString("gender"));
				member.setAge(rs.getInt("age"));
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

	public int delectMember(Connection conn, Member member) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = "delete from member where member_id =? and password =?";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getPassword());
			
			result = pstmt.executeUpdate();
			
			if(result > 0) commit(conn);
			else rollback(conn);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateMember(Connection conn, Member member) {
		String sql =null;
		int result =0 ;
		
		if(member.getPassword() != null) {
			sql ="update member set password =? where member_id = ?";
			result = doPstmt(conn, sql, member.getPassword(), member.getMemberId());
		}
		else if(member.getEmail()!= null) {
			sql ="update member set email =? where member_id = ?";
			result = doPstmt(conn, sql, member.getEmail(), member.getMemberId());
		}
		else if(member.getPhone()!= null) {
			sql ="update member set phone =? where member_id = ?";
			result = doPstmt(conn, sql, member.getPhone(), member.getMemberId());
		}
		else if (member.getAddress()!= null){
			sql ="update member set address =? where member_id = ?";
			result = doPstmt(conn, sql, member.getAddress(), member.getMemberId());
		}
		return result;
	}
	
/*	
 * 	다른 코드	
	public int updateMember(Connection conn, Member m) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "update member set "
					 + " password=?"
					 + ",email=?"
					 + ",phone=?"
					 + ",address=?"
					 + " where member_id=?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, m.getPassword());
			pstmt.setString(2, m.getEmail());
			pstmt.setString(3, m.getPhone());
			pstmt.setString(4, m.getAddress());
			pstmt.setString(5, m.getMemberId());
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
*/	
	
	
	public int doPstmt(Connection conn, String sql, String str, String memberId) {
		int result = 0;
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, str);
			pstmt.setString(2, memberId);
			result = pstmt.executeUpdate();
			
			if(result > 0) commit(conn);
			else rollback(conn);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}

}
