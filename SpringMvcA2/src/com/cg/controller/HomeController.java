package com.cg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String showPage() {
		return "HomePage";
	}
	
	@RequestMapping("home")
	public String showHomePage() {
		return "HomePage";
	}
}
