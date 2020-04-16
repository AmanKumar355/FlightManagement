package com.cg.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cg.dao.IEmpDao;
import com.cg.entity.Dept;
import com.cg.entity.Emp;

@Service
@Transactional
public class EmpServiceImpl implements IEmpService {

	@Autowired
	IEmpDao dao;
	
	@Override
	public void addDept(Dept dept) {
		dao.addDept(dept);
	}

	@Override
	public Dept viewDept(int id) {
		return dao.viewDept(id);
	}

	@Override
	public List<Dept> getDepts() {
		return dao.viewDepts();
	}

	@Override
	public void addEmployee(Emp emp) {
		dao.addEmp(emp);
	}

	@Override
	public List<Emp> viewAllEmp() {
		return dao.viewEmp();
	}

	@Override
	public Emp getEmpById(int eid) {
		return dao.viewEmp(eid);
	}

	@Override
	public List<Emp> viewEmpByDept(String deptName) {
		return dao.viewEmpByDept(deptName);
	}

	@Override
	public boolean deleteEmp(int eid) {
		return dao.deleteEmp(eid);
	}

}
