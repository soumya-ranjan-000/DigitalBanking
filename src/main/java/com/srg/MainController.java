package com.srg;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("digitalbanking")
public class MainController {

	private final Logger logger = Logger.getLogger(MainController.class);
    
	@GetMapping("login")
	public String getLogin() {
		logger.info("GET Login");
		return "login";
	}
	
	@PostMapping("login")
	public String postLogin(User u,HttpServletRequest req) {
		HttpSession se=req.getSession();
		if(u.getUsername().equals("testuser") && u.getPassword().equals("test123")) {
		    se.setAttribute("activeUser", u);
			return "redirect:home";
		}
		else {
			String e="error";
			req.setAttribute("error", e);
			return "login";
		}
	}
	
	@GetMapping("home")
	public String getHome() {
		logger.info("GET Home");
		return "home";
	}

	@GetMapping("savingsadvisor")
	public String getSavingsAdvisor(HttpServletRequest req) {
		logger.info("GET savingsadvisor");
		if(req.getAttribute("type")==null) {
			req.setAttribute("type", "adviser");
		}
		return "saving_adviser_home";
	}
	
	@GetMapping("logout")
	public String logout() {
		return "redirect:login";
	}
}
