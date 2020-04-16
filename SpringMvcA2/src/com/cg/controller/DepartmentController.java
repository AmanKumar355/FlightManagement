package com.cg.controller;

import javax.validation.ConstraintViolationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cg.entity.Dept;
import com.cg.service.IEmpService;

@Controller
@EnableTransactionManagement
public class DepartmentController {
	
	@Autowired
	IEmpService service;
	
	@RequestMapping("/addDept")
	public String showDeptForm(Model model) {
		model.addAttribute("dept", new  Dept());
		return "addDept";
	}
	
	@RequestMapping("/processDeptForm") 
	public String processDeptForm(@ModelAttribute("dept") Dept department, Model model) {
		Dept newDept = new Dept();
		try {
			newDept.setDeptName(department.getDeptName());
			service.addDept(newDept);
			model.addAttribute("msg", "Department is created Successfully: "+ department.getDeptName());
			return "HomePage";
		} catch (Exception e) {
			model.addAttribute("msg", "Department with  this name already exists. Try another name!");
			return "addDept";
		}
	}

}
