 package com.controller;


import java.io.*;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dao.*;
import com.model.*;
import java.sql.Blob;

@Controller
public class OwnerController {
	
	@RequestMapping(value="/saveOffer",method=RequestMethod.POST)
	public ModelAndView LoginData(HttpServletRequest request,
            @RequestParam(value="photo") CommonsMultipartFile[] photo, @RequestParam(value="product") String product,
            @RequestParam(value="offer_discount") String offer, @RequestParam(value="start_date") Date start_date,
            @RequestParam(value="end_date") Date end_date, HttpSession session
            ) throws Exception
	{		
		Offer o1=new Offer();
		OfferDAO od=new OfferDAO();
		ModelAndView md=null;
		o1.setProduct(product);
		o1.setOffer_discount(offer);
		o1.setStart_date(start_date);
		o1.setEnd_date(end_date);
		session= request.getSession();
		int i=(Integer)session.getAttribute("id");
		String cat=(String)session.getAttribute("cat");		
		o1.setOwnerId(i);
		o1.setScategory(cat);
		 if (photo != null && photo.length > 0) {
	            for (CommonsMultipartFile aFile : photo){
	                  
	                System.out.println("Saving file: " + aFile.getOriginalFilename());                
	                o1.setFileName(aFile.getOriginalFilename());
	                o1.setPhoto(aFile.getBytes());
	                              
	            }
	        }		 		 
        if(od.submit_offer(o1))
		{
			md= new ModelAndView("Success");
		}
		else
			md= new ModelAndView("SignUp");
		return md;
	}
	
	@RequestMapping(value={"/offerImage/{id}"}, method = RequestMethod.GET)
    public ModelAndView offerImage(HttpServletRequest request, HttpServletResponse response, Model model,
    		@PathVariable("id") int id) throws Exception{
		response.setContentType("image/jpeg");
		OfferDAO od=new OfferDAO();
		ModelAndView md=new ModelAndView("DeleteOffer");
		od.getPhotoById(id);
		return md;
    }
	
	
	@RequestMapping(value="/DeleteOffer.html",method=RequestMethod.GET)
    public ModelAndView searchAllView(HttpServletRequest request, HttpServletResponse response)
    {
    	List<Offer>mylist;
    	OfferDAO sd=new OfferDAO();
    	mylist=sd.searchAll();
		ModelAndView md=new ModelAndView("DeleteOffer");
		md.addObject("mylist",mylist);
    	return md;
    	
    }
	
	@RequestMapping(value="/viewOffer")
	public ModelAndView viewAll()
	{
		List<Offer>mylist;
		OfferDAO sd=new OfferDAO();
		mylist=sd.searchAll();
		ModelAndView md=new ModelAndView("ViewOffer");
		md.addObject("mylist",mylist);
		return md;
	}
	
	@RequestMapping(value="Delete.html/{id}",method=RequestMethod.GET)
	public void deleteOffer(@PathVariable("id") int id,HttpServletResponse response) throws Exception
	{
		OfferDAO od=new OfferDAO();
		od.deleteOfferById(id);
		
		String s="C://minorimage//"+id+".jpeg";
		File file=new File(s);
		if(file.exists())
		{
			file.delete();
		}
		response.sendRedirect("http://localhost:8080/FinalTest/OwnerHome.jsp");
	}

}
