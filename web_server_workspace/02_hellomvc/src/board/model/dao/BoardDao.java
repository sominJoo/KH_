package board.model.dao;

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

import board.model.exception.BoardException;
import board.model.vo.Attachment;
import board.model.vo.Board;
import board.model.vo.BoardComment;
import board.model.vo.BoardCount;
import common.JDBCTemplate;

import static common.JDBCTemplate.*;
public class BoardDao {
	Properties prop = new Properties();
	
	public BoardDao() {
		String fileName = "/sql/board/board-query.properties";
		String absPath = BoardDao.class.getResource(fileName).getPath();
		try {
			prop.load(new FileReader(absPath));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public List<BoardCount> selectList(Connection conn, int start, int end) {
		List<BoardCount> list = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null; 
		String sql =prop.getProperty("selectList");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardCount board = new BoardCount();
				board.setNo(rs.getInt("no"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				board.setContent(rs.getString("content"));
				board.setRegDate(rs.getDate("reg_date"));
				board.setReadCount(rs.getInt("read_count"));
				board.setBoardCount(rs.getInt("cnt"));

				if(rs.getInt("attach_no")!= 0) {
					Attachment attach = new Attachment();
					attach.setNo(rs.getInt("attach_no"));
					attach.setBoardNo(rs.getInt("no"));
					attach.setOriginalFilename(rs.getString("original_filename"));
					attach.setRenameFilename(rs.getString("renamed_filename"));
					attach.setStatus("Y".equals(rs.getString("status")) ? true :false); 
					board.setAttach(attach);					
				}
				list.add(board);
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

	public int selectBoardCount(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null; 
		int count=0;
		String sql =prop.getProperty("selectBoardCount");
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return count;
	}
	
	
	
	public int insertBoard(Connection conn, Board board) {
		int result =0;
		int count =0;
		PreparedStatement pstmt=null;

		String sql =prop.getProperty("insertBoard");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getWriter());
			pstmt.setString(3, board.getContent());
			pstmt.setInt(4, count);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			throw new BoardException("게시물 등록 오류",e);
		}finally {
			close(pstmt);
		}
		return result;
	}

	public int selectLastBoardNo(Connection conn) {
		int boardNo = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectLastBoardNo");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				boardNo = rset.getInt("board_no");
			}
		} catch (SQLException e) {
			throw new BoardException("게시물 등록 번호 조회 오류", e);
		} finally {
			close(rset);
			close(pstmt);
		}
		return boardNo;
	}

	public int insertAttachment(Connection conn, Attachment attach) {
		PreparedStatement pstmt=null;
		int result =0;
		String sql =prop.getProperty("insertAttachment");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, attach.getBoardNo());
			pstmt.setString(2, attach.getOriginalFilename());
			pstmt.setString(3, attach.getRenameFilename());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			throw new BoardException("게시물 첨부파일 등록 오류",e);
		}finally {
			close(pstmt);
		}
		return result;
		
	}

	public Board selectBoard(Connection conn, int boardNo) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Board board = null;
		String sql = prop.getProperty("selectBoard");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				board = new Board();
				board.setNo(rs.getInt("no"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				board.setContent(rs.getString("content"));
				board.setReadCount(rs.getInt("read_count"));
				
				sql = prop.getProperty("selectAttachment");
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, boardNo);
				rs = pstmt.executeQuery();
				Attachment attach =null;
				if(rs.next()) {
					attach= new Attachment();
					attach.setBoardNo(rs.getInt("board_no"));
					attach.setOriginalFilename(rs.getString("original_filename"));
					attach.setRenameFilename(rs.getString("renamed_filename"));
					attach.setStatus("Y".equals(rs.getString("status")) ? true :false);
					board.setAttach(attach);
				}
			}
		} catch (SQLException e) {
			throw new BoardException("첨부파일 조회 오류",e);
		}finally {
			close(rs);
			close(pstmt);
		}
		System.out.println(board);
		return board;
		
	}

	public Attachment selectOneAttachment(Connection conn, int no) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Attachment attach = null;
		String sql = prop.getProperty("selectAttachment");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				attach= new Attachment();
				attach.setNo(rs.getInt("no"));
				attach.setBoardNo(rs.getInt("board_no"));
				attach.setOriginalFilename(rs.getString("original_filename"));
				attach.setRenameFilename(rs.getString("renamed_filename"));
				attach.setStatus("Y".equals(rs.getString("status")) ? true :false);
			}			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		return attach;
		
	}

	public int deleteBoard(Connection conn, int no) {
		int result =0;
		PreparedStatement pstmt =null;
		String sql = "delete from board where no = ?";
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			throw new BoardException("게시물 삭제 오류", e);
		}finally {
			close(pstmt);
		}
		return result;
	}

	public int updateBoard(Connection conn, Board board) {
		int result =0;
		PreparedStatement pstmt =null;
		String sql = prop.getProperty("updateBoard");
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setInt(3, board.getNo());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException("게시물 수정 오류", e);
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	

	public int deleteAttachment(Connection conn, String attachNo) {
		int result =0;
		PreparedStatement pstmt =null;
		String sql = prop.getProperty("deleteAttachment");

		System.out.println("attachNo@dao = "+attachNo);
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, attachNo);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			throw new BoardException("첨부파일 삭제 오류", e);
		}finally {
			close(pstmt);
		}
		return result;
	}

	public int insertBoardComment(Connection conn, BoardComment bc) {
		PreparedStatement pstmt=null;
		int result =0;
		String sql =prop.getProperty("insertBoardComment");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bc.getCommentLevel());
			pstmt.setString(2, bc.getWriter());
			pstmt.setString(3, bc.getContent());
			pstmt.setInt(4, bc.getBoardNo());
			pstmt.setObject(5, bc.getCommentRef() == 0 ? null : bc.getCommentRef());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			throw new BoardException("댓글 등록 등록 오류",e);
		}finally {
			close(pstmt);
		}
		return result;
		
	

	}

	public List<BoardComment> selectBoardCommemtList(Connection conn, int boardNo) {
		List<BoardComment> commentList = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql ="select bc.* from board_comment bc where board_no = ? start with comment_level = 1 connect by prior no = comment_ref order siblings by reg_date";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardComment bc = new BoardComment();
				bc.setNo(rs.getInt("no"));
				bc.setCommentLevel(rs.getInt("comment_level"));
				bc.setWriter(rs.getString("writer"));
				bc.setContent(rs.getString("content"));
				bc.setBoardNo(rs.getInt("board_no"));
				bc.setCommentRef(rs.getInt("comment_ref"));
				bc.setRegDate(rs.getDate("reg_date"));
				commentList.add(bc);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return commentList;
	}

	public int deleteBoardComment(Connection conn, BoardComment boardComment) {
		int result =0;
		PreparedStatement pstmt =null;
		String sql = prop.getProperty("deleteBoardComment");
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setInt(1, boardComment.getNo());
			pstmt.setInt(2, boardComment.getBoardNo());

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			throw new BoardException("댓글 삭제 오류", e);
		}finally {
			close(pstmt);
		}
		return result;
	}

}
