package board.model.service;

import java.sql.Connection;
import java.util.List;

import board.model.dao.BoardDao;
import board.model.exception.BoardException;
import board.model.vo.Attachment;
import board.model.vo.Board;
import board.model.vo.BoardComment;
import board.model.vo.BoardCount;

import static common.JDBCTemplate.*;
public class BoardService {
	BoardDao boardDao = new BoardDao();
	
	public List<BoardCount> selectList(int start, int end) {
		Connection conn = getConnection();
		List<BoardCount> list =  boardDao.selectList(conn, start,end);
		close(conn);
		return list;
	}

	public int selectBoardCount() {
		Connection conn = getConnection();
		int count = boardDao.selectBoardCount(conn);
		close(conn);
		return count;
	}


	/**
	 * 첨부파일이 있는 경우 attach 객체를 attachment 테이블에 등록
	 *  - board 등록, attachment 등록은 하나의 트랜젝션으로 처리되어야한다.
	 * @param conn
	 * @param board
	 * @return
	 */
	public int insertBoard(Board board) {
		Connection conn = getConnection();
		int result=0;
		//한트렉젝션 안에서 작동 => 하나만 등록될 수 없음
		try {
			result=boardDao.insertBoard(conn, board);
			//생성된 board_no를 가져오기
			int boardNo = boardDao.selectLastBoardNo(conn);
			//redirect location설정
			board.setNo(boardNo);


			if(board.getAttach()!=null) {
				board.getAttach().setBoardNo(boardNo);
				result = boardDao.insertAttachment(conn,board.getAttach());
			}
			commit(conn);			
		}catch (Exception e) {
			rollback(conn);
			throw e; 	//컨트롤러에서 예외처리(예외페이지로 던지기, 로깅 작업)
		} 
		finally {
			close(conn);
		}
		return result;
	}

	public Board selectBoard(int boardNo) {
		//커밋 롤백 처리x, => try catch 절없어도 오류가 넘어감
		Connection conn = getConnection();
		Board board = boardDao.selectBoard(conn, boardNo);
		Attachment attach = boardDao.selectOneAttachment(conn, boardNo);
		board.setAttach(attach);
		close(conn);
		return board;
	}
	
	

	public Attachment selectOneAttachment(int no) {
		Connection conn = getConnection();
		Attachment attach = boardDao.selectOneAttachment(conn, no);
		close(conn);
		return attach;
	}

	public int deleteBoard(int no) {
		Connection conn = getConnection();
		int result =0 ;
		try {
			 result = boardDao.deleteBoard(conn,no);
			 if(result ==0 ) {
				throw new IllegalArgumentException("해당 게시글이 존재하지 않습니다. : " + no );
			 }
			 commit(conn);
		} catch (Exception e) {
			 rollback(conn);
			throw e;
		}finally {
			close(conn);
		}
		return result;
	}

	public int updateBoard(Board board){
		Connection conn =getConnection();
		int result =0;
		try {
			//1. board update
			result = boardDao.updateBoard(conn, board);		
			//게시물은 있지만 첨부파일은 없는 경우 	
			//2. attachment insert
			if(board.getAttach() !=null) {
				result = boardDao.insertAttachment(conn, board.getAttach());
			}
			
			//3. 게시물은 존재. 첨부파일도 존재!
			
			commit(conn);
		} catch (Exception e) {
			rollback(conn);
			throw e;
		}
		return result;
	}

	public int deleteAttachment(String attachNo) {
		Connection conn = getConnection();
		int result =0 ;
		try {
			System.out.println("attachNo@service = "+attachNo);

			result = boardDao.deleteAttachment(conn,attachNo);
			 commit(conn);
		} catch (Exception e) {
			 rollback(conn);
			throw e;
		}finally {
			close(conn);
		}
		return result;
		
	}

	public int insertBoardComment(BoardComment bc) {
		Connection conn = getConnection();
		int result=0;
		try {
			result=boardDao.insertBoardComment(conn, bc);
			commit(conn);			
		}catch (Exception e) {
			rollback(conn);
			throw e; 	//컨트롤러에서 예외처리(예외페이지로 던지기, 로깅 작업)
		} 
		finally {
			close(conn);
		}
		return result;
	}

	public List<BoardComment> selectBoardCommemtList(int boardNo) {
		Connection conn = getConnection();
		List<BoardComment> commnetList =  boardDao.selectBoardCommemtList(conn, boardNo);
		close(conn);
		return commnetList;
		
	}

	public int deleteBoardComment(BoardComment boardComment) {
		Connection conn = getConnection();
		int result =0 ;
		try {
			result = boardDao.deleteBoardComment(conn,boardComment);
			 commit(conn);
		} catch (Exception e) {
			 rollback(conn);
			throw e;
		}finally {
			close(conn);
		}
		return result;
	}

}
