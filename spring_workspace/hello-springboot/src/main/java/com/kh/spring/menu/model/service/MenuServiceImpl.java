package com.kh.spring.menu.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureOrder;
import org.springframework.stereotype.Service;

import com.kh.spring.menu.model.dao.MenuDao;
import com.kh.spring.menu.model.vo.Menu;

@Service
public class MenuServiceImpl implements MenuService {
	@Autowired
	private MenuDao menuDao;

	@Override
	public List<Menu> selectMenuList() {
		return menuDao.selectMenuList();
	}

	@Override
	public List<Menu> selectMenuListByType(String type) {
		return menuDao.selectMenuListByType(type);
	}

	@Override
	public List<Menu> selectMenuListByType(Map<String, String> param) {
		return menuDao.selectMenuListByType(param);
	}

	@Override
	public int inputMenu(Menu menu) {
		return menuDao.inputMenu(menu);
	}

	@Override
	public Menu selectOneMenu(int id) {
		return menuDao.selectOneMenu(id);
	}

	@Override
	public int updateMenu(Menu menu) {
		return menuDao.updateMenu(menu);
	} 
}
