package com.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.dao.*;
import com.model.*;

@Controller
public class LoginController {
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView LoginData(@RequestParam(value="email") String email, @RequestParam(value="password") String password, HttpSession session) throws Exception
	{
		
		ModelAndView md = null;
		LoginDAO ld= new LoginDAO();
		Register r=new Register();
		RegiterDAO rd=new RegiterDAO();
		r.setEmail(email);
		r.setPassword(password);
//		session.setAttribute("obj",r);
		if(ld.checkLogin(r))
		{
			//String cat= rd.getCategoryByEmail("email");
			md= new ModelAndView("OwnerHome");
			md.addObject("r",r.getEmail());
		}
		else
			md= new ModelAndView("Login");
		return md;
	}
	
	@RequestMapping(value="/Logout",method=RequestMethod.GET)
	public ModelAndView Logout(HttpSession session,HttpServletRequest request)
	{
		ModelAndView md;
		session=request.getSession();
		session.invalidate();
		session=null;
		md=new ModelAndView("index");
		return md;
	}

}
