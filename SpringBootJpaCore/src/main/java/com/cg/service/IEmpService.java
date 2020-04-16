package com.cg.service;

import java.util.List;

import com.cg.entity.Dept;
import com.cg.entity.Emp;

public interface IEmpService {
	void addDept(Dept dept);
	Dept viewDept(int id);
	List<Dept> getDepts();
	void addEmployee(Emp emp);
	List<Emp> viewAllEmp();
	Emp getEmpById(int eid);
	List<Emp> viewEmpByDept(String deptName);
	boolean deleteEmp(int eid);
}
