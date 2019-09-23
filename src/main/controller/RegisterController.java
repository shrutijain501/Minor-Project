package com.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.*;
import com.model.*;

@Controller
public class RegisterController {
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public ModelAndView insert(@ModelAttribute("register") Register register)
	{
		RegiterDAO rd= new RegiterDAO();
		ModelAndView md;
		if(rd.insertOwner(register))
		{
			md=new ModelAndView("Login");
			md.addObject("msg","Registered Succesfully Please login to continue....");
		}
		else
		{
			md=new ModelAndView("SignUp");
			md.addObject("msg","Error....");
		}
		return md;
	}
	
	@RequestMapping(value="/OwnerHome.jsp",method=RequestMethod.GET)
    public ModelAndView searchAllView(HttpServletRequest request, HttpServletResponse response)
    {
    	List<Offer>mylist;
    	OfferDAO sd=new OfferDAO();
    	mylist=sd.searchAll();
		ModelAndView md=new ModelAndView("OwnerHome");
		md.addObject("mylist",mylist);
    	return md;
    	
    }
	

}
