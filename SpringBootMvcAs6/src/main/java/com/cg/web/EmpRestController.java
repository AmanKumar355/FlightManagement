package com.cg.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.cg.dao.IEmpDao;
import com.cg.entity.Dept;
import com.cg.entity.Emp;
import com.cg.exception.EmpIdException;
import com.cg.exception.EmpNotFoundException;

@RestController
public class EmpRestController {

	
	@Autowired
	private IEmpDao dao;
	
	@CrossOrigin
	@GetMapping("/viewbyid/{empid}")
	public Emp getEmployeeById(@PathVariable("empid") int eid) throws EmpNotFoundException{
		Emp emp = dao.viewEmp(eid);
		if(emp == null)
			throw  new EmpNotFoundException();

		return emp;		
	}
	
	@CrossOrigin
	@GetMapping("/viewall")
	public List<Emp> getAllEmployee(){
		return dao.viewEmp();
	}
	
	@CrossOrigin
	@GetMapping("/viewbydept/{dept}")
	public List<Emp> getEmployeeByDept(@PathVariable("dept") String dept){
		return dao.viewEmp(dept);
	}
	
	@CrossOrigin
	@GetMapping("/viewdepts")
	public List<Dept>  getDepartments(){
		return dao.viewDepts();
	}
	
	@CrossOrigin
	@PostMapping("/add")
	public String adEmployee(@RequestBody Emp emp) throws EmpIdException{
		try {
			dao.addEmp(emp);
			return "Successfully Added";
		}catch(Exception ex) {
			throw new EmpIdException();
		}
	}
	
	@CrossOrigin
	@PutMapping(value="/edit")
	public String EditEmployee(@RequestBody Emp emp) throws EmpIdException{
		dao.editEmp(emp);
		return "Successfully edited";
	}
	
	@CrossOrigin
	@DeleteMapping("/remove/{empid}")
	public String removeEmployee(@PathVariable("empid") int eid) throws EmpIdException{
		dao.deleteEmp(eid);
		return "Successfully Removed";
	}
}
