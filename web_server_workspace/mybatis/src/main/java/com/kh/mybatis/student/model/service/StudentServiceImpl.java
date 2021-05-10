package com.kh.mybatis.student.model.service;

import static com.kh.mybatis.common.MybatisUtils.getSqlSession;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.student.model.dao.StudentDao;
import com.kh.mybatis.student.model.dao.StudentDaoImpl;
import com.kh.mybatis.student.model.vo.Student;

public class StudentServiceImpl implements StudentService {

	private StudentDao studentDao = new StudentDaoImpl();

	@Override
	public int insertStudent(Student student) {
		//1. SqlSession 생성
		SqlSession session = getSqlSession();
		int result = 0;
		try {
			//2. dao 업무위임
			result = studentDao.insertStudent(session, student);
			//3. transaction 처리: SqlSession에 대해서 commit|rollback
			session.commit();
		} catch(Exception e) {
			session.rollback();
			throw e;
		} finally {
			//4. SqlSession 자원반납 
			session.close();
		}
		return result;
	}

	@Override
	public int insertStudentMap(Map<String, Object> student) {
		//1. SqlSession 생성
		SqlSession session = getSqlSession();
		int result = 0;
		try {
			//2. dao 업무위임
			result = studentDao.insertStudentMap(session, student);
			//3. transaction 처리: SqlSession에 대해서 commit|rollback
			session.commit();
		} catch(Exception e) {
			session.rollback();
			throw e;
		} finally {
			//4. SqlSession 자원반납 
			session.close();
		}
		return result;
	}

	@Override
	public int selectStudentCount() {
		SqlSession session = getSqlSession();
		int total = studentDao.selectStudentCount(session);
		session.close();
		return total;
	}

	@Override
	public Student selectOneStudent(int no) {
		SqlSession session = getSqlSession();
		Student student = studentDao.selectOneStudent(session,no);
		session.close();
		return student;
	}

	@Override
	public Map<String, Object> selectOneMapStudent(int no) {
		SqlSession session = getSqlSession();
		Map<String, Object> student = studentDao.selectOneMapStudent(session,no);
		session.close();
		return student;
	}

	@Override
	public int updateStudent(Student student) {
		//1. SqlSession 생성
		SqlSession session = getSqlSession();
		int result = 0;
		try {
			//2. dao 업무위임
			result = studentDao.updateStudent(session, student);
			//3. transaction 처리: SqlSession에 대해서 commit|rollback
			session.commit();
		} catch(Exception e) {
			session.rollback();
			throw e;
		} finally {
			//4. SqlSession 자원반납 
			session.close();
		}
		return result;
	}

	@Override
	public int deleteStudent(int no) {
		//1. SqlSession 생성
		SqlSession session = getSqlSession();
		int result = 0;
		try {
			//2. dao 업무위임
			result = studentDao.deleteStudent(session, no);
			//3. transaction 처리: SqlSession에 대해서 commit|rollback
			session.commit();
		} catch(Exception e) {
			session.rollback();
			throw e;
		} finally {
			//4. SqlSession 자원반납 
			session.close();
		}
		return result;
	}

	@Override
	public List<Student> selectStudentList() {
		SqlSession session = getSqlSession();
		List<Student> list = studentDao.selectStudentList(session);
		session.close();
		return list;
	}

	@Override
	public List<Map<String, Object>> selectStudenMapList() {
		SqlSession session = getSqlSession();
		List<Map<String, Object>> list = studentDao.selectStudenMapList(session);
		session.close();
		return list;
	}
}
