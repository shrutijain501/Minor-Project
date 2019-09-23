package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dao.FilterDAO;
import com.dao.OfferDAO;
import com.model.Offer;
import com.model.Register;

@Controller
public class FilterController {
	
	@RequestMapping(value={"/list/{cat}"}, method = RequestMethod.GET)
    public ModelAndView offerImage(HttpServletRequest request, HttpServletResponse response, Model model,@PathVariable("cat") String cat
    		) throws Exception{
		response.setContentType("image/jpeg");
		FilterDAO od=new FilterDAO();
		ModelAndView md;
		List<Offer> mylist=new ArrayList<Offer>();
		mylist=od.show(cat);
		md=new ModelAndView("List");
		md.addObject("mylist", mylist);
		return md;
    }
	
	@RequestMapping(value={"/offers/{id}"}, method = RequestMethod.GET)
    public ModelAndView offerImage(HttpServletRequest request, HttpServletResponse response, Model model,
    		@PathVariable("id") int id) throws Exception{
		response.setContentType("image/jpeg");
		FilterDAO fd=new FilterDAO();
		System.out.println("id:"+id);
		fd.getPhotoById(id);
		ModelAndView md=new ModelAndView("List");
		return md;
    }
	
	@RequestMapping(value={"/list/VisitShop/{OwnerId}"}, method = RequestMethod.GET)
    public ModelAndView shopDetails(HttpServletRequest request, HttpServletResponse response, Model model,
    		@PathVariable("OwnerId") int id) throws Exception{
		FilterDAO fd=new FilterDAO();
		Register r=new Register();
		r=fd.getDetails(id);
		ModelAndView md=new ModelAndView("ViewShop");
		md.addObject("r", r);
		return md;
    }
}
