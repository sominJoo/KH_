package com.kh.spring.menu.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kh.spring.menu.model.service.MenuService;
import com.kh.spring.menu.model.vo.Menu;

import lombok.extern.slf4j.Slf4j;


/**
 * @RestController
 * 	=> @Controller + @ResponseBody
 *  - 모든 핸들러는 @@ResponseBody로 처리된다.
 *
 * 응답헤더에 'Access-Control-Allow-Origin' 설정을 해야 타 network에서도 접근가능
 */
@RestController
@Slf4j
public class MenuController {
	@Autowired
	private MenuService menuServie;
	

	/**
	 * @CrossOrigin : HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN
	 * 	- header에 ACCESS_CONTROL_ALLOW_ORIGIN를 추가해 외부요청을 처리함
	 */
	@GetMapping("/menus")
	public List<Menu> menus(HttpServletResponse response) {
		List<Menu> menuList = null;
		try {
			menuList = menuServie.selectMenuList();
			log.debug("menuList ={}",menuList);
			
			//2. 리턴하면 
			
			//3. 응답헤더에 'Access-Control-Allow-Origin' : 특정 origin
//			response.setHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "http://localhost:9090");
//			response.setHeader(HttpHeaders.ACCESS_CONTROL_ALLOW_ORIGIN, "*");
		} catch (Exception e) {
			log.error("menu 찾기 오류");
			throw e;
		}
		
		
		//2. 리턴 시  @ResponseBody에 의해서 json 변환 후, 응답 출력 처리.
		return menuList;
	}
	
	
	/**
	 * @PathVariable : 경로 변수
	 */
	@GetMapping("/menus/{type}/{taste}")
	public List<Menu> menuByType(@PathVariable String type,@PathVariable String taste){
		List<Menu> menuList = null;
		try {
			log.debug("type ={}",type);
			log.debug("taste ={}",taste);
			Map<String, String> param = new HashMap<String, String>();
			param.put("type", type);
			param.put("taste", taste);
			menuList =menuServie.selectMenuListByType(param);
		} catch (Exception e) {
			log.error("error ={} ",e);
			throw e;
		}
		return menuList;
	}
	
	
	/**
	 * @RequestBody : @ResponseBody와 상응. 요청메세지의 body에 작성된 json 문자열을 java로 변환
	 * @param menu
	 * @return
	 */
	@PostMapping("/menu")
	public Map<String, Object> menuAdd(@RequestBody Menu menu) {
		Map<String, Object> map = new HashMap<>();
		try {
			log.debug("menu ={}", menu);
			int result = menuServie.inputMenu(menu); 
			map.put("msg", "메뉴 등록 성공");
		} catch (Exception e) {
			log.error("메뉴 등록 실패", e);
			throw e;
		}
		return map;
	}
	
	
//	@GetMapping("/menu")
//	public Menu selectOneMenu(@RequestParam int id) {
//		Menu menu = null;
//		try {
//			log.debug("id ={}",id);
//			menu = menuServie.selectOneMenu(id);
//		} catch (Exception e) {
//			log.error("메뉴 찾기 실패", e);
//			throw e;
//		}
//		return menu;
//	}
//	
	/**
	 * ResponseEntity를 통해서 
	 * 존재하지 않는 메뉴번호를 요청한 경우 
	 * 404 status code를 응답.
	 * 
	 * @param id
	 * @return
	 */
	@CrossOrigin
	@GetMapping("/menu/{id}")
	public ResponseEntity<Menu> selectOneMenu(@PathVariable String id) {
		try {
			log.debug("id = {}", id);
			Menu menu = menuServie.selectOneMenu(id);
			if(menu != null) {
				return ResponseEntity
						.ok()
						.body(menu);
			}
			else {
				return ResponseEntity
						.notFound()
						.build();			//status: 404 에러 보냄
			}
		} catch (Exception e) {
			log.error("메뉴 조회 오류 : " + id, e);
			throw e;
		}
	}
	
	
	
	@PutMapping("/menu")
	public Map<String, Object> updateMenu(@RequestBody Menu menu) {
		Map<String, Object> map = new HashMap<>();
		try {
			log.debug("menu ={}", menu);
			int result = menuServie.updateMenu(menu); 
			map.put("msg", "메뉴 수정 성공");
		} catch (Exception e) {
			log.error("메뉴 수정 실패", e);
			throw e;
		}
		return map;
	}
	
	
//	@DeleteMapping("/menu/{id}")
//	public Map<String, Object> deleteMenu(@PathVariable String id){
//		log.debug("id ={}",id);
//		Map<String, Object> map = new HashMap<String, Object>();
//		try {
//			int result =menuServie.deleteMenu(id);
//			map.put("msg", "메뉴 삭제 성공");
//		} catch (Exception e) {
//			log.debug("메뉴 삭제 실패");
//			map.put("msg", "메뉴 삭제 실패");
//			throw e;
//		}
//		return map;
//	}
	@DeleteMapping("/menu/{id}")
	public ResponseEntity<?> deleteMenu(@PathVariable String id) {
		log.debug("id ={}",id);
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			int result =menuServie.deleteMenu(id);
			if(result > 0) {
				map.put("msg", "메뉴삭제성공");
				return new ResponseEntity<Map<String,Object>>(map,HttpStatus.OK);
			}
			else {
				return new ResponseEntity<>(HttpStatus.NOT_FOUND);			//status: 404 에러 보냄
			}
		} catch (Exception e) {
			log.error("메뉴 조회 오류 : " + id, e);
			throw e;
		}
	}
	
}
