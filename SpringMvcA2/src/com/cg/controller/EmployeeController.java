package com.cg.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cg.entity.Emp;
import com.cg.service.IEmpService;

@Controller
@EnableTransactionManagement
public class EmployeeController {
	
	@Autowired
	IEmpService service;
	
	@GetMapping("/addEmp")
	public String showEmpForm(Model model) {
		model.addAttribute("dlist", service.getDepts());
		return "addEmp";
	}
	
	@PostMapping("/processEmpForm")
	public String addEmpForm(@ModelAttribute("emodel") Emp emp,Model model) {
		try {
			service.addEmployee(emp);
			model.addAttribute("msg", "New Employee is Added Successfully!");
			return "HomePage";
		} catch (Exception e) {
			model.addAttribute("msg", "Employee already exists. Try another name!");
			return "addDept";
		}
	}
	
	@GetMapping("/viewall")
	public String viewAllEmp(Model model) {
		model.addAttribute("elist", service.viewAllEmp());
		return "EmpviewPage";
	}
	
	@GetMapping("/viewbyid")
	public String viewEmpByID() {
		return "ViewEmpById";
	}
	
	@GetMapping("/searchbyid")
	public String searchEmpByID(@RequestParam int id, Model model) {
		model.addAttribute("emp", service.getEmpById(id));
		return "ViewEmpById";
	}
	
	@GetMapping("/viewbydept")
	public String viewEmpByDept(Model model) {
		model.addAttribute("dlist", service.getDepts());
		return "EmpViewByDept";
	}
	
	@GetMapping("/searchbydept")
	public String searchEmpByDept(@RequestParam String deptName, Model model) {
		model.addAttribute("elist", service.viewEmpByDept(deptName));
		model.addAttribute("dlist", service.getDepts());
		model.addAttribute("deptName", deptName);
		return "EmpViewByDept";
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam int eid) {
		service.deleteEmp(eid);
		return "redirect:viewall";
	}
	
}
