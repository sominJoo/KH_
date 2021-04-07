package board.model.service;

import java.sql.Connection;
import java.util.List;

import board.model.dao.BoardDao;
import board.model.vo.Board;
import static common.JDBCTemplate.*;
public class BoardService {
	BoardDao boardDao = new BoardDao();
	
	public List<Board> selectList(int start, int end) {
		Connection conn = getConnection();
		List<Board> list =  boardDao.selectList(conn, start,end);
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
			System.out.println("boardNo@service : "+boardNo);
			
			if(board.getAttach()!=null) {
				board.getAttach().setBoardNo(boardNo);
				result = boardDao.insertAttachment(conn,board.getAttach());
			}
			System.out.println("insertAttachment result = "+result);
			commit(conn);			
		}catch (Exception e) {
			e.printStackTrace();
			rollback(conn);
			result =0;
		} 
		finally {
			close(conn);
		}
		return result;
	}

	public Board selectBoard(int boardNo) {
		Connection conn = getConnection();
		Board board = null;
		try {
			board = boardDao.selectBoard(conn, boardNo);
		} catch (Exception e) {
			e.printStackTrace();
			rollback(conn);
		}finally {
			close(conn);
		}
		return board;
	}

}
