package com.dao;

import java.util.Iterator;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.model.*;

public class LoginDAO {
	
	public boolean checkLogin(Register r)
	{
		Session session1=HibernateSessionFactory.getSession();
	    String hql;
	    hql="From Register where email=? and password=?";
	    Query query=session1.createQuery(hql);
	    query.setParameter(0,r.getEmail());
	    query.setParameter(1, r.getPassword());
	    Iterator it=query.iterate();
	    if(it.hasNext())
	    {	
	    	session1.close();
	    	return true;
	    }
	    session1.close();
	    return false;
	}
	
}
