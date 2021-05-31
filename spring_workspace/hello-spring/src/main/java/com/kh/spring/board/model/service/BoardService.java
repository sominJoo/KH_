package com.kh.spring.board.model.service;

import java.util.List;
import java.util.Map;

import com.kh.spring.board.model.vo.Attachment;
import com.kh.spring.board.model.vo.Board;
import com.kh.spring.board.model.vo.BoardExt;

public interface BoardService {

	List<Board> selectBoardList(Map<String, Object> param);

	int selectBoardTotalContents();

	int insertBoard(BoardExt board);

	int insertAttachment(Attachment attach);

	BoardExt selectBoardOne(int no);

	BoardExt selectOneBoardCollection(int no);

	Attachment selectOneAttachment(int no);

	List<Board> selectBoardTitleList(String title);

}
