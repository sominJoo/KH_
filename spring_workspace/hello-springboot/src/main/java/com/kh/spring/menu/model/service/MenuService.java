package com.kh.spring.menu.model.service;

import java.util.List;
import java.util.Map;

import com.kh.spring.menu.model.vo.Menu;

public interface MenuService {

	List<Menu> selectMenuList();

	List<Menu> selectMenuListByType(String type);

	List<Menu> selectMenuListByType(Map<String, String> param);

	int inputMenu(Menu menu);

	Menu selectOneMenu(String id);

	int updateMenu(Menu menu);

	int deleteMenu(String id);

}
