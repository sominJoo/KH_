package com.kh.mybatis.student.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.student.model.vo.Student;

public class StudentDaoImpl implements StudentDao {

	@Override
	public int insertStudent(SqlSession session, Student student) {
		// statement : namespace.queryTagId
		return session.insert("student.insertStudent", student);
	}

	
	/**
	 * vo 객체를 이용하지 않고 map으로 처리
	 */
	@Override
	public int insertStudentMap(SqlSession session, Map<String, Object> student) {
		//인자로는 여러개 불가 하나만 가능!
		//ex> no, name 등 여러개 인자는 불가능하다
		return session.insert("student.insertStudentMap", student);
	}


	@Override
	public int selectStudentCount(SqlSession session) {
		
		//한행만 return : selectOne
		//여러줄 return : selectList
		return session.selectOne("student.selectStudentCount");
	}


	@Override
	public Student selectOneStudent(SqlSession session, int no) {
		//인자로는 여러개 불가 하나만 가능!
		return session.selectOne("student.selectOneStudent",no);
	}


	@Override
	public Map<String, Object> selectOneMapStudent(SqlSession session, int no) {
		return session.selectOne("student.selectOneMapStudent",no);
	}


	@Override
	public int updateStudent(SqlSession session, Student student) {
		return session.update("student.updateStudent",student);
	}


	@Override
	public int deleteStudent(SqlSession session, int no) {
		return session.delete("student.deleteStudent",no);
	}


	/**
	 * 조회된 행이 없는 경우, 빈 arrayList 객체가 리턴된다.
	 */
	@Override
	public List<Student> selectStudentList(SqlSession session) {
		return session.selectList("student.selectStudentList");
	}


	@Override
	public List<Map<String, Object>> selectStudenMapList(SqlSession session) {
		return session.selectList("student.selectStudenMapList");
	}
}
