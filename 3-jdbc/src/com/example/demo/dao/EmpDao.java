package com.example.demo.dao;

import java.util.List;

import com.example.demo.model.Emp;

// 디비와 대화하는 클래스는 관습적으로 인터페이스를 두고 구현 클래스를 따로 작성을 한다.
// 왜냐하면 연동하는 디비가 자주 변경하기 때문입니다. 
// DAO는 Data Access Object 의 약자로 데이터 변수와 대화하는 클래스이다.
public interface EmpDao {
	public int insert(Emp emp); // 한 행울 추가, 성공 시 1을 리턴
	public int update(Emp emp); // 한 행을 수정, 성공 시 1을 리턴
	public int delate(int empno); // 한 행을 삭제, 성공 시 1을 리턴
	
	public int count(); // 테이블의 전체 행의 개수를 리턴
	public List<Emp> findAll(); //  테이블의 전체 행의 정보를 리턴
	public Emp findOne(int empno); // 한 행의 정보를 리턴
}
