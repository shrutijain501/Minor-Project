package com.dao;

import java.io.FileOutputStream;
import java.util.*;

import org.hibernate.Query;
import org.hibernate.Session;

import com.model.Offer;
import com.model.Register;

public class FilterDAO {
	
	public List<Offer> show(String category)
	{
		Session session=HibernateSessionFactory.getSession();
		String hql="from Offer where Scategory=?";
		Query query=session.createQuery(hql);
		query.setParameter(0, category);
		List<Offer> mylist=new ArrayList<Offer>();
		mylist=query.list();
		return mylist;
	}
	
	public void getPhotoById(int id) throws Exception{
		Session session=HibernateSessionFactory.getSession();
		Offer imgNew=(Offer)session.get(Offer.class, id);
		byte[] img=imgNew.getPhoto();
		try{
			String s="C://minorimage//"+id+".jpeg";
		    FileOutputStream fos = new FileOutputStream(s);
		    fos.write(img);
		    fos.close();
		}catch(Exception e){
		    e.printStackTrace();
		}
	}
	
	public Register getDetails(int id) throws Exception{
		Session session=HibernateSessionFactory.getSession();
		Register r=new Register();
		r=(Register)session.get(Register.class, id);
		return r;
	}
}
