package com.SportyShoes.controllers;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.SportyShoes.Entity.Order;
import com.SportyShoes.Repositories.OrderRepository;

@Controller
public class OrderController {
	
	@Autowired
	OrderRepository orderRepo;
	
	
	@RequestMapping("/purchasereport")
    public String usertList(Model model) {
         model.addAttribute("orders", orderRepo.findAll());
         return "purchasereport";
	}
	
	
	@RequestMapping("/saveorder")
    public String save(@ModelAttribute("order") Order order,Model model){    
    	orderRepo.save(order);
    	model.addAttribute("order", order.getOrderid());
        return "forward:/order";   
    }
    
    @RequestMapping("/order")
    public String user(Model model) {
       
         return "order";
    }
	
    @RequestMapping("/filter")    
    public String userid(Model m){     
        m.addAttribute("command", new Order()); 
        return "filter";
    }
    
    @RequestMapping("/orderfilter")    
    public String userbyid(@RequestParam String category,@RequestParam Date dop,Model m){    
    	m.addAttribute("orders", orderRepo.orderFilter(category,dop));
        return "orderfilter";
    }

}
