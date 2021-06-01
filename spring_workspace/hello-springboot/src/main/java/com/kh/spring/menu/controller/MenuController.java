package com.kh.spring.menu.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
 */
@RestController
@Slf4j
public class MenuController {
	@Autowired
	private MenuService menuServie;
	
	@GetMapping("/menus")
	public List<Menu> menus() {
		List<Menu> menuList = null;
		try {
			menuList = menuServie.selectMenuList();
			log.debug("menuList ={}",menuList);
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
	
	
	@GetMapping("/menu")
	public Menu selectOneMenu(@RequestParam int id) {
		Menu menu = null;
		try {
			log.debug("id ={}",id);
			menu = menuServie.selectOneMenu(id);
		} catch (Exception e) {
			log.error("메뉴 찾기 실패", e);
			throw e;
		}
		return menu;
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
}
