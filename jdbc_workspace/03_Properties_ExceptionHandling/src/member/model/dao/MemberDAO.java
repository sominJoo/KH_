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
import java.util.Properties;

import common.JDBCTemplate;
import member.exception.MemberException;
import member.model.vo.Member;

public class MemberDAO extends JDBCTemplate{
	Properties prop = new Properties();
	/**
	 * MemberDAO 객체 생성 시(최초1회) member-query.properties의 내용을 읽어다 prop에 저장
	 * 
	 * dao 메소드 호출 시 마다 prop으로부터 query를 가져다 사용
	 */
	public MemberDAO() {
		try {
			prop.load(new FileReader("resource/member-query.properties"));
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}
	
	
	public List<Member> selectAll(Connection conn){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("selectAll");
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
			//e.printStackTrace();
			//예외를 전환 : RuntimeException 의미 분명한 커스텀 예외 객체로 전환
			throw new MemberException("회원 전체 조회 오류", e);
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	public int insertMemebr(Connection conn, Member member) {
		PreparedStatement pstmt = null;
		int result =0;
		String sql = prop.getProperty("insertMember");
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
			throw new MemberException("회원 가입 오류", e);
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
		String sql = prop.getProperty("selectId");;
		
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
			throw new MemberException("회원 ID 조회 오류", e);
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
		String sql = prop.getProperty("selectName");
		
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
			throw new MemberException("회원 이름 조회 오류", e);
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	public int deleteMember(Connection conn, Member member) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteMember");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getPassword());
			
			result = pstmt.executeUpdate();
			
			if(result > 0) commit(conn);
			else rollback(conn);
			
		} catch (SQLException e) {
			throw new MemberException("회원 탈퇴 오류", e);
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	
	
	
	public int updateMember(Connection conn, Member member) {
		String sql =null;
		int result =0 ;
		
		if(member.getPassword() != null) {
			sql =prop.getProperty("updateMember_password");
			result = doPstmt(conn, sql, member.getPassword(), member.getMemberId());
		}
		else if(member.getEmail()!= null) {
			sql =prop.getProperty("updateMember_email");
			result = doPstmt(conn, sql, member.getEmail(), member.getMemberId());
		}
		else if(member.getPhone()!= null) {
			sql =prop.getProperty("updateMember_phone");
			result = doPstmt(conn, sql, member.getPhone(), member.getMemberId());
		}
		else if (member.getAddress()!= null){
			sql =prop.getProperty("updateMember_address");
			result = doPstmt(conn, sql, member.getAddress(), member.getMemberId());
		}
		return result;
	}

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
			throw new MemberException("회원 정보 변경 오류", e);
		}finally {
			close(pstmt);
		}
		return result;
	}


	public List<Member> selectDeleteMember(Connection conn, String memberId) {
		List<Member> list = new ArrayList<Member>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = prop.getProperty("selectDeleteMember");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Member member  = new Member();
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
				member.setDelDate(rs.getDate("del_date"));
				list.add(member);
			}
		} catch (SQLException e) {
			throw new MemberException("탈퇴 회원 조회 오류", e);
		}finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

}
