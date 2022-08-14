package com.SportyShoes.controllers;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.SportyShoes.Entity.Order;
import com.SportyShoes.Entity.Shoe;
import com.SportyShoes.Repositories.ShoeRepository;

@Controller
public class ShoeController {
    
    @Autowired
    ShoeRepository shoeRepo;
    
    @RequestMapping("/shoes")
    public String shoeList(Model model) {
         model.addAttribute("shoes", shoeRepo.findAll());
         model.addAttribute("command", new Order());
         DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
         LocalDateTime now = LocalDateTime.now();
         model.addAttribute("Date",dtf.format(now));
         return "shoes";
    }
    
    @RequestMapping("/product")
    public String productList(Model model) {
         model.addAttribute("shoes", shoeRepo.findAll());
         return "product";
    }
    
    @RequestMapping(value="/deleteshoe/{id}",method = RequestMethod.GET)    
    public String delete(@PathVariable int id){    
        shoeRepo.deleteById(id);    
        return "redirect:/product";    
    }     
    
    @RequestMapping("/welcome")                     
    public String SpringBootHello() {
        return "welcome";           
    }
    
    @RequestMapping("/addshoe")    
    public String showform(Model m){    
        m.addAttribute("command", new Shoe());  
        return "addshoe";
    }
    
    @RequestMapping("/saveshoe")
    public String save(@ModelAttribute("shoe") Shoe shoe){    
    	shoeRepo.save(shoe);    
        return "redirect:/product";   
    }
    

}