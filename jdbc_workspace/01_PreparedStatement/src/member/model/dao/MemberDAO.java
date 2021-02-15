package member.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import member.model.vo.Member;

/**
 * DAO
 * -Data Access Object
 * -DB에 접근하는 클래스
 * 
 * 1. 드라이버 클래스 등록(최초 1회)
 * 2. connection 객체 생성(url, user, password)
 * 3. 자동 커밋 여부 설정 : true(default) / false --> app에서 직접 트랜젝션 제어
 * 4. PreparedStatement 객체 생성(미완성 쿼리) 및 값 대임
 * 5. Statement 객체 실행 : db에 쿼리 요청
 * 6. 응답 처리 DML : int return // DQL : ResultSet return : 자바객체로 전환
 * 7. 트랜잭션 처리(DML)
 * 8. 자원 반남(생성의 역순)
 */
public class MemberDAO {
	String driverClass ="oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe"; //xe:사용중인 실제 db이름
	String user = "student";
	String password = "student";

	
	/**
	 * 회원 추가
	 * @param member
	 * @return result
	 */
	public int insertMember(Member member) {
		Connection conn =null;
		PreparedStatement pstmt = null;
		int result =0;
		String sql = "insert into member values(?, ?, ?, ?, ?, ?, ?, ?, ?, default)";
		try {
			//1. 드라이버 등록
			Class.forName(driverClass);	//class에 드라이버 클래스 등록.  ClassNotFoundException 던진다
			
			//2.커넥션
			conn = DriverManager.getConnection(url, user, password); //SQLException 던짐
			
			//3.자동커밋 여부
			conn.setAutoCommit(false); //실행 실패 시 commit rollback 자유롭게 하기 위해 
			
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
			
			//트랜젝션 처리(DML)
			if(result>0)
				conn.commit();
			else 
				conn.rollback();
			
			
		} catch (ClassNotFoundException e) {
			// ojdbc6.jar 프로젝트 연동 실패!
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//자원 반납(생성의 역순) 따로 해야 안전함.
			try {
				if(pstmt != null)
					pstmt.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			try {
				if(conn != null) //null인경우 close에서 nullpointException떨어짐)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}

	/**
	 * 검색
	 * @return list
	 */
	public List<Member> selectAll() {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Member> list = new ArrayList<>();
		String sql = "select * from member order by enroll_date desc";
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(url,user,password);
			
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
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if(rs !=null)
					rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if(pstmt !=null)
					pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if(conn !=null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}

	public Member selectOne(String memberId) {
		// TODO Auto-generated method stub
		Member member =null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from member where member_id =?";
		try {
			Class.forName(driverClass);
			conn = DriverManager.getConnection(url,user,password);
			
			pstmt = conn.prepareStatement(sql);
			//sql문 '?'에 값 대입
			pstmt.setString(1, memberId);
			
			//5.응답처리(rs에 table이 대임된다.)
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				member = new Member();
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
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if(rs !=null)
					rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if(pstmt !=null)
					pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				if(conn !=null)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return member;
	}

	public List<Member> selectName(String memberName) {
		Member member = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Member> list = new ArrayList<>();
		String sql = "select * from member where member_name like '%' || ? || '%'";
		
		try {
			conn = DriverManager.getConnection(url,user,password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberName);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				member = new Member();
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
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		return list;
	}

	public int updateMember(Member member) {
		// 암호, 이메일, 전화번호, 주소, 취미 변경.
		Connection conn =null;
		PreparedStatement pstmt = null;
		int result =0;
		String sql = "update member set password =?, email=?, phone =?, address =?, hobby = ? where member_id = ?";
		
		try {
			Class.forName(driverClass);	
			conn = DriverManager.getConnection(url, user, password);
			conn.setAutoCommit(false); //실행 실패 시 commit rollback 자유롭게 하기 위해 
			
			pstmt = conn.prepareStatement(sql);
			
			
			pstmt.setString(1, member.getPassword());
			pstmt.setString(2, member.getEmail());
			pstmt.setString(3, member.getPhone());
			pstmt.setString(4, member.getAddress());
			pstmt.setString(5, member.getHobby());
			pstmt.setString(6, member.getMemberId());
		
			
			//5.객체 실행, 응답처리
			result = pstmt.executeUpdate();//DML(insert, update, delete)인 경우 executeUpdate. DQL(select)인 경우executeQuery
			
			//트랜젝션 처리(DML)
			if(result>0)
				conn.commit();
			else 
				conn.rollback();
			
			
		} catch (ClassNotFoundException e) {
			// ojdbc6.jar 프로젝트 연동 실패!
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//자원 반납(생성의 역순) 따로 해야 안전함.
			try {
				if(pstmt != null)
					pstmt.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			try {
				if(conn != null) //null인경우 close에서 nullpointException떨어짐)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
		
	}

	public int deleteMember(Member member) {
		// 암호, 이메일, 전화번호, 주소, 취미 변경.
		Connection conn =null;
		PreparedStatement pstmt = null;
		int result =0;
		String sql = "delete from member where member_id = ? and password =?";
		
		try {
			Class.forName(driverClass);	
			conn = DriverManager.getConnection(url, user, password);
			conn.setAutoCommit(false); //실행 실패 시 commit rollback 자유롭게 하기 위해 
			
			pstmt = conn.prepareStatement(sql);
			

			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getPassword());
			result = pstmt.executeUpdate();
			
			//트랜젝션 처리(DML)
			if(result>0)
				conn.commit();
			else 
				conn.rollback();
			
			
		} catch (ClassNotFoundException e) {
			// ojdbc6.jar 프로젝트 연동 실패!
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			//자원 반납(생성의 역순) 따로 해야 안전함.
			try {
				if(pstmt != null)
					pstmt.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			try {
				if(conn != null) //null인경우 close에서 nullpointException떨어짐)
					conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}
	
}
