package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.model.*;

public class RegiterDAO {

	public boolean insertOwner(Register r)
	{
		Session session1=HibernateSessionFactory.getSession();
		Transaction tx=session1.beginTransaction();
		session1.save(r);
		tx.commit();
		session1.close();
		return true;
	}
	
	public String getCategoryByEmail(String email) throws Exception
	{
		Session session=HibernateSessionFactory.getSession();
		String hql="select Scategory from Register where Email=?";
		Query query=session.createQuery(hql);
		query.setParameter(0,email);
		String cat=(String)query.uniqueResult();
		System.out.println("category:"+cat);
		return cat;
	}

	public Register searchAll(int id)
	{
		Session session1=HibernateSessionFactory.getSession();
		Register mylist;
		mylist=(Register)session1.get(Register.class, id);
		return mylist;
	}
	
}
