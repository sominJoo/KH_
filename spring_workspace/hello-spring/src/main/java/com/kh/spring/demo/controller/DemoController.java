package com.kh.spring.demo.controller;

import java.awt.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.spring.demo.model.DevValidator;
import com.kh.spring.demo.model.service.DemoService;
import com.kh.spring.demo.model.vo.Dev;

/**
 * 사용자 요청 하나당 이를 처리하는 Controller 메소드(Handler)가 하나씩 존재
 * 
 * 
 ** HttpServletRequest
	* HttpServletResponse
	* HttpSession
	* java.util.Locale : 요청에 대한 Locale
	* InputStream/Reader : 요청에 대한 입력스트림
	* OutputStream/Writer : 응답에 대한 출력스트림. ServletOutputStream, PrintWriter
	* 
	* 
	* @PathVariable: 요청url중 일부를 매개변수로 취할 수 있다.
	* @RequestParam
	* @RequestHeader
	* @CookieValue
	* @RequestBody
	* 
	* 
	뷰에 전달할 모델 데이터 설정
	* ModelAndView
	* Model
	* ModelMap 
	* 
	* @ModelAttribute : model속성에 대한 getter
	* @SessionAttribute : session속성에 대한 getter
	* SessionStatus: @SessionAttribute로 등록된 속성에 대하여 사용완료(complete)처리
	* 
	* 
	* Command객체 : http요청 파라미터를 커맨드객체에 저장한 VO객체
	* @Valid : 커맨드 객체의 유효성 검사
	* Error, BindingResult : Command객체에 저장결과, Command객체 바로 다음위치시킬것.
	* 
	* 
	기타
	* MultipartFile : 업로드파일 처리 인터페이스. CommonsMultipartFile
	* RedirectAttributes : DML처리후 요청주소 변경을 위한 redirect를 지원
 */

@Controller
@RequestMapping("/demo")
public class DemoController {
	//Spring용 logging 클래스
	private static final Logger log = LoggerFactory.getLogger(DemoController.class);
	
	@Autowired
	private DemoService demoService;
	
	@RequestMapping("/devForm.do")
	public String devForm() {
		log.info("/demo/devForm.do 요청");
//		System.out.println("/demo/devForm.do 요청");
		return "demo/devForm";
	}
	
	/**
	 * @RequestMapping
	 * - 함수(handler) 단위로 요청 받기가능
	 * 
	 *  속성
	 *  method = RequestMethod.POST => post요청만 처리함
	 */
	@RequestMapping("/dev1.do")
	public String dev1(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("name");
		int career=Integer.parseInt(request.getParameter("career"));
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String[] lang = request.getParameterValues("lang");
		
		Dev dev = new Dev(0, name, career, email, gender, lang);
		log.info("dev={}",dev);
		
		//2.업무로직
		
		//3.jsp에 출력
		request.setAttribute("dev", dev);
		return "demo/devResult";
	}
	
	
	/**
	 * @RequestParam : name값과 일치하는 매개변수에 전달
	 * 
	 * 속성
	 * 1. name
	 * 	- name값(userName)이 매개변수(name)와 일치하지 않는다면, @RequestParam(name="userName") 지정  
	 * (name속성값이 매개변수명보다 우선순위 높음)
	 * 2. required
	 * 	- required="true" 가 default=> 사용자가 선택적으로 입력하는 필드는 @RequestParam(required = false)지정
	 * 3. defaultValue
	 * 	- defaultValue를 지정한경우, 값이 없거나, 형변환 오류가 발생해도 기본값으로 정상처리 된다.
	 * 
	 * 
	 * Model : request를 사용하지 않고 model 저장해서 view에 돌려줌
	 * 	 */
	@RequestMapping("/dev2.do")
	public String dev2(
			@RequestParam String name, 
			@RequestParam(defaultValue="1") int career,
			@RequestParam String email,
			@RequestParam String gender,
			@RequestParam(required = false) String[] lang,
			Model model
			) {
		Dev dev = new Dev(0, name, career, email, gender, lang);
		log.info("dev2={}",dev);
		
		//jsp 위임
		model.addAttribute("dev", dev); //jsp에서 scope="request"에 저장되어있음.

		return "demo/devResult";
	}
	
	
	/**
	 * 매개변수 Dev객체를 command객체라 한다.
	 * @ModelAttribute : 모델에 등록된 속성을 가져오는 어노테이션
	 * Dev객체는 handler 도칙전에 model에 등록되어있다.
	 * 
	 */
	@RequestMapping(value= "/dev3.do", method=RequestMethod.POST)
	public String dev3(@ModelAttribute Dev	dev) {
		log.info("dev3={}",dev);

		return "demo/devResult";
	}
	@RequestMapping(value= "/dev4.do",method=RequestMethod.POST)
	public String dev4(@Valid Dev dev, BindingResult bindingResult) {
		if(bindingResult.hasErrors()) {
			String errors="";
			java.util.List<ObjectError> errorList = bindingResult.getAllErrors();
			for(ObjectError err : errorList) {
				errors+= err.getCode()+":" +err.getDefaultMessage()+" ";
			}
			throw new IllegalArgumentException(errors);
		}
		
		return "demo/devResult";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setValidator(new DevValidator());
	}
	
	
	/**
	 * RedirectAttribute
	 * 
	 */
	@RequestMapping(value= "/insertDev.do",method=RequestMethod.POST)
	public String insertDev(Dev dev, RedirectAttributes redirectAttr) {
		try {
			int result = demoService.insertDev(dev);

			//사용자 피드백 & 리다이렉트
			redirectAttr.addFlashAttribute("msg","dev 등록 성공!");		//session에 쓰고 지우는 역할까지 수행
		} catch (Exception e) {
			log.error("dev 등록오류",e);
			throw e;
		}
		
		return "redirect:/demo/devList.do";
	}
	
	
	@RequestMapping(value= "/devList.do",method=RequestMethod.GET)
	public String devList(Model model) {
		java.util.List<Dev> list = demoService.selectDevList();
		log.info("list ={}",list);
		log.info("12341234");
		
		model.addAttribute("list",list);
		return "demo/devList";
	}
	
	
	
//	@RequestMapping(value= "/updateDev.do",method=RequestMethod.GET)
	@GetMapping("/updateDev.do")
	public String updateDev(Model model, @RequestParam(name="no", required =true) int no) {
		try {
			//1.업무 로직
			Dev dev =demoService.selectOneDev(no);
			log.info("dev={}" , dev);
			
			//dev값 오류 시
			if(dev == null) {
				throw new IllegalArgumentException("존재하지 않는 개발자 정보이다.");
			}
			
			
			//2.결과 전달 및 위임
			model.addAttribute("dev",dev);
			
		} catch (Exception e) {
			log.error("dev 수정페이지 오류" ,e);
			throw e;
		}
		return "demo/devUpdateForm";
	}
	

	@PostMapping("/updateDev.do")
	public String updateDev2(@ModelAttribute Dev dev, RedirectAttributes attr) {
		log.info("수정요청 dev = {}", dev);
		try {
			//1. 업무로직
			int result = demoService.updateDev(dev);
			if(result == 0)
				throw new IllegalArgumentException("존재하지 않는 개발자 정보 : " + dev.getNo());
			
			//2. 사용자피드백 & 리다이렉트
			attr.addFlashAttribute("msg", "개발자 정보 수정 성공!");
		} catch(Exception e) {
			log.error("개발자 정보 수정 오류!", e);
			throw e;
		}
		return "redirect:/demo/devList.do";
	}
	
	


	@PostMapping("/deleteDev.do")
	public String deleteDev(@RequestParam int no, RedirectAttributes attr) {
		try {
			//1. 업무로직
			int result = demoService.deleteDev(no);
			if(result == 0)
				throw new IllegalArgumentException("존재하지 않는 개발자 정보 : " + no);
			
			//2. 사용자피드백 & 리다이렉트
			attr.addFlashAttribute("msg", "개발자 정보 삭제 성공!");
		} catch(Exception e) {
			log.error("개발자 정보 삭제 오류!", e);
			throw e;
		}
		return "redirect:/demo/devList.do";
	}
}
