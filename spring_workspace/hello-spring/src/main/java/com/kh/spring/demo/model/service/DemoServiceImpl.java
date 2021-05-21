package com.kh.spring.demo.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.demo.model.dao.DemoDao;
import com.kh.spring.demo.model.vo.Dev;

@Service
public class DemoServiceImpl implements DemoService{
	
	@Autowired 		//setter로도 가능
	private DemoDao demoDao;

	/**
	 * Spring AOP 기술을 이용해 session 객체 관리(시작 ~ 끝), 트랜젝션 처리
	 */
	@Override
	public int insertDev(Dev dev) {
		//1. sqlSession객체 생성
		//2. dao 업무 요청
		//3. 트랜젝션 처리
		//4. session 반납
		
		//2. dao 업무 요청
		return demoDao.insertDev(dev);
	}

	@Override
	public List<Dev> selectDevList() {
		return demoDao.selectDevList();
	}

	@Override
	public Dev selectOneDev(int no) {
		return demoDao.selectOneDev(no);
	}

	@Override
	public int updateDev(Dev dev) {
		// TODO Auto-generated method stub
		return demoDao.updateDev(dev);
	}

	@Override
	public int deleteDev(int no) {
		// TODO Auto-generated method stub
		return demoDao.deleteDev(no);
	}
}
