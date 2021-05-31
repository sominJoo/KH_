package com.kh.spring.memo.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.spring.demo.controller.DemoController;
import com.kh.spring.memo.model.service.MemoService;
import com.kh.spring.memo.model.vo.Memo;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/memo")
public class MemoController {

	//Spring용 logging 클래스
	private static final Logger log = LoggerFactory.getLogger(DemoController.class);
	
	@Autowired
	private MemoService memoService;
	
	@GetMapping("/memo.do")
	public ModelAndView memo(ModelAndView mav) {
		//1. 메모 조회
		List<Memo> memoList = memoService.selectMemoList();
		log.debug("memoList= {}",memoList);
		
		mav.addObject("memoList",memoList);
		mav.setViewName("memo/memo");
		return mav;
	}
	
	
	@PostMapping("/insertMemo.do")
	public String insertMemo(@ModelAttribute Memo memo, RedirectAttributes attr) {
		log.info("memo= {}",memo);
		try {
			int result = memoService.insertMemo(memo);
			
		} catch (Exception e) {
			log.error("메모 추가 오류");
			throw e;
		}
		return "redirect:/memo/memo.do";
	}
}
