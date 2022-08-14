package com.SportyShoes.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.SportyShoes.Entity.Admin;
import com.SportyShoes.Repositories.AdminRepository;

@Controller
public class AdminController {
	
	@Autowired
	AdminRepository adminRepo;
	
	 @RequestMapping("/loginpage")    
	    public String loginpage(Model m){    
	        m.addAttribute("command", new Admin());  
	        return "loginpage";
	    }
	 
	 @RequestMapping("/login")    
	    public String login(@RequestParam String login,@RequestParam String password,Model m){    
	    	String p = adminRepo.getp(login);
	    	if(password.equals(p)) {
	    		return "admin";
	    	}
	    	else {
	        return "fail";}
	    }
	 
	 @RequestMapping("/updatepassword")    
	    public String showform(Model m){    
	        m.addAttribute("command", new Admin());  
	        return "updatepassword";
	    }
	    
	    @RequestMapping("/updated")
	    public String save(@ModelAttribute("admin") Admin admin){    
	    	adminRepo.save(admin);    
	        return "updated";   
	    }

}
