package com.kh.spring.member.controller;

import java.beans.PropertyEditor;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.spring.demo.controller.DemoController;
import com.kh.spring.member.model.service.MemberService;
import com.kh.spring.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

/**
 * Model
 * 	- MVC패턴의 model이 아니다.
 * 	- view단에 전달하기 위한 데이터를 저장하는 Map
 * 
 * 1. Model<<interface>>
 * 		- addAttribute(name,value)
 * 		- viewName : String을 리턴
 * 2. ModelMap
 * 		- Model Interface의 구현체이다.
 * 
 * 3. ModelAndView
 * 		-addObject(name,value)
 * 		-setViewName를 이요해서 viewName설정
 * 		-ModelAndView객체를 리턴
 * 
 * ==> 결국 ModelAndView로 통합되서 spring container에 의해 관리된다.
 * 
 * 
 * @ModelAttribute | @SessionAttribute
 * 	- handler의 매개변수 앞에 사용
 * 	- 모델에 저장된 속성에 대한 getter
 *  - name, required(기본값:ture) 지정 가능
 *  
 * @ModelAttribute
 * 	- method레벨에서 작성
 *  - 이메소드에서 model 속성 setter로 상요 
 *  - 현재 controller클래스의 모든 handler에 앞서 실행되며, 모든 요청에서 해당 데이터 접근 가능
 */
@Controller
@RequestMapping("/member")
@Slf4j
@SessionAttributes({"loginMember","next"}) //loginmember가 저장된다면 세션에 저장해주세요
public class MemberController {
	//Spring용 logging 클래스
	private static final Logger log = LoggerFactory.getLogger(DemoController.class);
	@Autowired
	private MemberService memberService;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@ModelAttribute("common")
	public Map<String, Object> common(){
		 Map<String, Object> map = new HashMap<>();
		 map.put("adminEmail", "admin@kh.or.kr");
		 map.put("adminPhone", "070-1234-5678");
		 return map;
	}
	
	@GetMapping("/memberEnroll.do")
	public void memberEnroll() {	
		// /WEB-INF/views/member/memberEnroll.jsp로 자동 포워딩됨
		// DefaultRequestToViewNameTranslator 빈이(자동생성되ㅏㅁ) 요청주소에서 viewName을 유추함
	}
	
	@PostMapping("/memberEnroll.do")
	public String memberEnroll(@ModelAttribute Member member, RedirectAttributes attr) {	
		log.info("member ={}" , member);
		try {
			//0. 비밀번호 암호화 처리
			String rawPassword = member.getPassword();
			String encodedPassword= passwordEncoder.encode(rawPassword);		//암호화 완료
			member.setPassword(encodedPassword);
			log.info("암호화 이후 member ={}" , member);
			
			
			int result = memberService.insertMember(member);
			
			attr.addFlashAttribute("msg","회원가입성공");
		} catch (Exception e) {
			log.error("회원가입 오류");
			throw e;
		}
		return "redirect:/"; //=> index.jsp 응답
	}
	
	/**
	 * java.sql.Date, java.util.Date 필드에 값대입시
	 * 사용자 입력값이 ""인 경우 null로 처리가능하게 설정 
	 * @param binder
	 */
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		//특정타입에 대해서 null이 가능하도록 에디터 등록
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		PropertyEditor editor = new CustomDateEditor(format,true);
		binder.registerCustomEditor(Date.class, editor);
	}
	
	/**
	 * 로그인 페이지로 넘어갈때의 referer을 session에 저장해서 다른 페이지에서 로그인시 그 next에 저장한 페이지로 넘김
	 */
	@GetMapping("/memberLogin.do")
	public void memberLogin(@RequestHeader(name="Referer", required =false) String referer,  Model model
							,@SessionAttribute(required = true) String next) {		
		log.info("referer={}",referer);
		log.info("next={}",next);
		if(referer !=null && next == null)		//next 중첩 방지
			model.addAttribute("next",referer);
		
	}
	
	
	@PostMapping("/memberLogin.do")
	public String memberLogin(
			@RequestParam String id, 
			@RequestParam String password, 
			@SessionAttribute(required = false) String next,
			Model model,
			RedirectAttributes redirectAttr
			) {
		try {
			//1. 회원 객체 있는지 확인
			Member member = memberService.selectOneMember(id);
			log.info("loginmember ={}" , member);
//			log.info("encryptedPassword = {}", passwordEncoder.encode(password));
			
			//matches(rawPassword, encodedPassword)
			if(member != null  && passwordEncoder.matches(password, member.getPassword())){
				//로그인 성공
				//loginMember세션속성 저장 : class에 @SessionAttributes로 등록
				model.addAttribute("loginMember",member);		
			}		
			else {
				redirectAttr.addFlashAttribute("msg","아이디 또는 비밀번호를 확인해주세요");
				return "redirect: /member/memberLogin.do";
			}
			
		} catch (Exception e) {
			log.error("로그인 오류");
			throw e;
		}

		return "redirect:"+(next != null ? next : "/");
	}
	
	
	/**
	 * @SessionAttributes를 통해서 등록한 session속성은  SessionStatus객체에 대해서 complete처리해야한다.
	 * 
	 */
	@GetMapping("/memberLogout.do")
	public String memberLogout(SessionStatus status) {
		if(!status.isComplete())
			status.setComplete();
		return "redirect:/";
	}
	
	@GetMapping("/memberDetail.do")
	public ModelAndView memberDetail(ModelAndView mav, @SessionAttribute Member loginMember) {
		log.info("loginMember ={} " , loginMember);
		//속성 저장
		mav.addObject("time", System.currentTimeMillis());
		//viewName 설정
		mav.setViewName("member/memberDetail");
		return mav;
		
	}
}
