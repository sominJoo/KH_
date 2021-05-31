package com.kh.spring.board.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.spring.board.model.service.BoardService;
import com.kh.spring.board.model.vo.Attachment;
import com.kh.spring.board.model.vo.Board;
import com.kh.spring.board.model.vo.BoardExt;
import com.kh.spring.common.util.HelloSpringUtils;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board")
@Slf4j
public class BoardController {
	@Autowired
	private ServletContext application;
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private ResourceLoader resourceLoader;
	
	@GetMapping("/boardList.do")
	public String boardList(
				@RequestParam(required = true, defaultValue = "1") int cpage,
				HttpServletRequest request,
				Model model
			) {
		try {
			log.debug("cpage = {}", cpage);
			final int limit = 10;
			final int offset = (cpage - 1) * limit;
			Map<String, Object> param = new HashMap<>();
			param.put("limit", limit);
			param.put("offset", offset);
			
			//1.업무로직 : content영역 - Rowbounds
			List<Board> list = boardService.selectBoardList(param);
			int totalContents = boardService.selectBoardTotalContents();
			String url = request.getRequestURI();
			log.debug("totalContents = {}, url = {}", totalContents, url);

			//1.업무로직 : pageBar영역 
			String pageBar = HelloSpringUtils.getPageBar(totalContents, cpage, limit, url);
			
			//2. jsp에 위임
			model.addAttribute("list", list);
			model.addAttribute("pageBar", pageBar);
			
		} catch(Exception e) {
			log.error("게시글 조회 오류!", e);
			throw e;
		}
		return "board/boardList";
	}
	
	@GetMapping("/boardForm.do")
	public void boardForm() {}
	
	@PostMapping("/boardEnroll.do")
	public String boardEnroll(
						@ModelAttribute BoardExt board,
						@RequestParam(name = "upFile") MultipartFile[] upFiles,
						RedirectAttributes redirectAttr
					) throws Exception {
		try {			
			log.debug("board = {}", board);
			//1. 파일 저장 : 절대경로 /resources/upload/board
			//pageContext:PageContext - request:HttpServletRequest - session:HttpSession - application:ServletContext
			String saveDirectory = application.getRealPath("/resources/upload/board");
			log.debug("saveDirectory = {}", saveDirectory);
			
			//디렉토리 생성
			File dir = new File(saveDirectory);
			if(!dir.exists())
				dir.mkdirs(); // 복수개의 디렉토리를 생성
			
			List<Attachment> attachList = new ArrayList<>();
			
			for(MultipartFile upFile : upFiles) {
				//input[name=upFile]로부터 비어있는 upFile이 넘어온다.
				if(upFile.isEmpty()) continue;
				
				String renamedFilename = 
						HelloSpringUtils.getRenamedFilename(upFile.getOriginalFilename());
				
				//a.서버컴퓨터에 저장
				File dest = new File(saveDirectory, renamedFilename);
				upFile.transferTo(dest); // 파일이동
				
				//b.저장된 데이터를 Attachment객체에 저장 및 list에 추가
				Attachment attach = new Attachment();
				attach.setOriginalFilename(upFile.getOriginalFilename());
				attach.setRenamedFilename(renamedFilename);
				attachList.add(attach);
			}
			
			log.debug("attachList = {}", attachList);
			board.setAttachList(attachList);
			
			//2. 업무로직 : db저장 board, attachment
			int result = boardService.insertBoard(board);
			
			//3. 사용자피드백 &  리다이렉트
			redirectAttr.addFlashAttribute("msg","등록성공");
		} catch (Exception e) {
			log.error("등록 오류",e);
			throw e;
		}
		return "redirect:/board/boardList.do";
	}
	
	
	@GetMapping("/boardDetail")
	public String boardDetail(@RequestParam int no, Model model) {
		try {
			//1. 업무로직 : board- attachment
//			BoardExt board= boardService.selectBoardOne(no);
			BoardExt board= boardService.selectOneBoardCollection(no);
			log.debug("board={}" ,board);

			
			model.addAttribute("board",board);
		} catch (Exception e) {
			log.error("등록 오류",e);
			throw e;
		}
		return "board/boardDetail";
	}
	


	/**
	 * ResonseEntity 
	 *  1. status code 커스터 마이징
	 *  2. 응답 헤더 커스터마이증
	 *  3. @ResponseBody 기능 포함
	 * @return
	 * @throws UnsupportedEncodingException 
	 */
	@GetMapping("/fileDownload.do")
	public  ResponseEntity<Resource> FiledownlogdWithResponseEntity(@RequestParam int no) throws UnsupportedEncodingException{
		ResponseEntity<Resource> responseEntity = null;
		try {
			//1. 업무로직 : db조회
			Attachment attach = boardService.selectOneAttachment(no);
			
			//2. Resource객체
			String saveDirectory = application.getRealPath("/resources/upload/board");
			File downFile = new File(saveDirectory, attach.getRenamedFilename());
			Resource resource = resourceLoader.getResource("file:" + downFile);
			String filename = new String(attach.getOriginalFilename().getBytes("utf-8"), "iso-8859-1");
			
			//3. ResponseEntity객체 생성 및 리턴
			//builder패턴
			responseEntity= ResponseEntity
										.ok()
										.header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_OCTET_STREAM_VALUE)
										.header(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=" + filename)
										.body(resource);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
								
		return responseEntity;
	}
	
	
//	@GetMapping(
//			value="/fileDownload.do",
//			produces = MediaType.APPLICATION_OCTET_STREAM_VALUE
//			)
	
	@ResponseBody // 응답 메세지에 return객체를 직접 출력
	public Resource fileDownload(@RequestParam int no, HttpServletResponse response) throws UnsupportedEncodingException {
		//1. 업무로직 : db에서 첨부파일 정보 조회
		Attachment attach = boardService.selectOneAttachment(no);
		log.debug("attach = {}", attach);
		if(attach == null) {
			throw new IllegalArgumentException("해당 첨부파일은 존재하지 않습니다 : " + no);
		}
		
		//2. Resource객체를 리턴 : 응답메세지에서 출력은 spring-container가 처리
		String originalFilename = attach.getOriginalFilename();
		String renamedFilename = attach.getRenamedFilename();
		String saveDirectory = application.getRealPath("/resources/upload/board");		//파일 저장된 위치
		File downFile = new File(saveDirectory, renamedFilename);
		
		//웹상자원, 서버컴퓨터자원을 모두 다룰수 있는 스프링의 추상화 layer
//		String location = "file:" + downFile.toString();
		String location = "https://docs.oracle.com/javase/8/docs/api/java/lang/String.html";			//다운로드할 주소
		log.debug("location = {}", location);
		Resource resource = resourceLoader.getResource(location);
		
		//3.응답헤더
		//한글깨짐방지처리
//		originalFilename = new String(originalFilename.getBytes("utf-8"), "iso-8859-1");
		originalFilename = "String.html";																//해당주소(location)에서 String.html을 받아옴
		response.addHeader(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=" + originalFilename);	//헤더에 파일 이름저장
		
		return resource;
	}
	
	@GetMapping("/boardfind.do")
	@ResponseBody
	public  List<Board> selectBoardTitle(@RequestParam String title){	
		log.debug("title = {}", title);
		List<Board> boardTitleList = new ArrayList<Board>();
		try {
			boardTitleList = boardService.selectBoardTitleList(title);		
			log.debug("boardTitleList = {}", boardTitleList);
		} catch (Exception e) {
			log.error("오류발생");
			throw e;
		}
		return boardTitleList;
	}
	
}
