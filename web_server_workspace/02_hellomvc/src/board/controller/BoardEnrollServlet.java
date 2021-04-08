package board.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FileRenamePolicy;

import board.model.service.BoardService;
import board.model.vo.Attachment;
import board.model.vo.Board;
import common.MvcFileRenamePolicy;

/**
 * Servlet implementation class BoardEnrollServlet
 */
@WebServlet("/board/boardEnroll")
public class BoardEnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BoardService boardService = new BoardService();
	
	
	/**
	 * 0. form 속성 enctype ="multipart/form-date" 추가
	 * 1. MultipartRequest 객체 생성  : 서버 컴퓨터에 파일 저장.
	 * 		-request
	 * 		-저장경로
	 * 		-encoding
	 * 		-최대허용크기
	 * 		-파일명 변경정책 객체
	 * 2. db에 파일정보를 저장 
	 * 		-사용자가 저장한 파일명 : original_filename
	 * 		-실제 저장된 파일명 : renamed_filename
	 * 
	 * MultipartRequest객체 사용 시, 기존 HttpServletRequest에서는사용자 입력값에 접근 불가!
	 * 
	 * 
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//1.MultipartRequest 객체 생성
			// /WebContent/upload/board/업로드파일명.jpg
			// /: web root dir 를 절대경로로 반환
			String saveDirectory = getServletContext().getRealPath("/upload/board");
			
			//파일크기 최대 허용값
			int maxPostSize = 10* 1024* 1024;
			
			String encoding ="utf-8";
			
			//파일명 변경 정책 객체
			MvcFileRenamePolicy policy = new MvcFileRenamePolicy();
	
			MultipartRequest multipartRequest = 
					new MultipartRequest(
									request, 
									saveDirectory, 
									maxPostSize, 
									encoding, 
									policy
								);
			//1. 사용자 입력값
			String title = multipartRequest.getParameter("title");
			String writer =  multipartRequest.getParameter("writer");
			String content =  multipartRequest.getParameter("content");
			
			//업로드한 파일명
			String originalFilename = multipartRequest.getOriginalFileName("upFile");	//전송한 파일 이름이 upFile
			String renamedFilename = multipartRequest.getFilesystemName("upFile");
			System.out.println("oFileName = "+originalFilename);
			System.out.println("reFileName = "+ renamedFilename);
			Board board = new Board();
			board.setTitle(title);
			board.setWriter(writer);
			board.setContent(content);
			
			if(originalFilename !=null) {
				Attachment attach = new Attachment();
				attach.setOriginalFilename(originalFilename);
				attach.setRenameFilename(renamedFilename);
				board.setAttach(attach);
			}	
	
			int result = boardService.insertBoard(board);
			String msg = (result > 0) ? 
							"게시글 등록 성공!" :
								"게시글 등록 실패!";
			String location =request.getContextPath();
			//등록성공시 게시글 상세페이지로
			location += (result > 0) ?
					"/board/boardView?no=" + board.getNo() : 
						"/board/boardList";
			HttpSession session = request.getSession();
			session.setAttribute("msg", msg);
			response.sendRedirect(location);
		}catch(Exception e) {
			e.printStackTrace();
			throw e; //was한테 던짐 : 에러 페이지 출력
		}
	}

}
