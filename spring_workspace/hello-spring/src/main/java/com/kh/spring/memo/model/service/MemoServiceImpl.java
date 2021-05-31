package com.kh.spring.memo.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.memo.model.dao.MemoDao;
import com.kh.spring.memo.model.vo.Memo;


/**
 * 의존주입을 받은 객체는 우리가 작성한 MemoController, MemoServiceImpl, MemoDaoImpl 타입의 객체가 아닌 Proxy 객체이다.
 * @author ddomin
 *
 */
@Service
public class MemoServiceImpl implements MemoService {
	@Autowired
	private MemoDao memoDao;

	@Override
	public int insertMemo(Memo memo) {
		return memoDao.insertMemo(memo);
	}

	@Override
	public List<Memo> selectMemoList() {
		return memoDao.selectMemoList();
	}
}
