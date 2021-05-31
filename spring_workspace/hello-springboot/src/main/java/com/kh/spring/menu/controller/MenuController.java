package com.kh.spring.menu.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
	
}
