package com.SportyShoes.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.SportyShoes.Entity.Users;
import com.SportyShoes.Repositories.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	UserRepository userRepo;
	
	@RequestMapping("/userlist")
    public String usertList(Model model) {
         model.addAttribute("users", userRepo.findAll());
         return "userlist";
	}     
	
	@RequestMapping("/adduser")    
    public String userform(Model m){    
        m.addAttribute("command", new Users());  
        return "adduser";
    }
    
    @RequestMapping("/saveuser")
    public String save(@ModelAttribute("user") Users user,Model model){    
    	userRepo.save(user);
    	model.addAttribute("user", user.getUserid());
        return "forward:/user";   
    }
    
    @RequestMapping("/user")
    public String user(Model model) {
       
         return "user";
    }
	
    @RequestMapping("/userid")    
    public String userid(Model m){    
        m.addAttribute("command", new Users());  
        return "userid";
    }
    
    @RequestMapping("/userbyid")    
    public String userbyid(@RequestParam int userid,Model m){    
    	m.addAttribute("users", userRepo.findUserById(userid));
        return "userbyid";
    }
}	