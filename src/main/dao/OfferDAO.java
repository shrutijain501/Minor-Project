package com.dao;

import java.io.FileOutputStream;
import java.sql.Blob;
import java.sql.PreparedStatement;
import java.util.List;

import javax.sql.DataSource;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.model.Offer;
import com.model.Register;


public class OfferDAO {
	
	
	
	public boolean submit_offer(Offer o)
	{
		Session session1=HibernateSessionFactory.getSession();
		Transaction tx=session1.beginTransaction();
		session1.save(o);
		tx.commit();
		session1.close();
		return true;
	}
	
	public List<Offer> searchAll()
	{
		Session session1=HibernateSessionFactory.getSession();
		Query query;
		query=session1.createQuery("from Offer");
		List<Offer> mylist;
		mylist=query.list();
		return mylist;
		
	}
	
	public Offer findOffer(String code){
        Session session= HibernateSessionFactory.getSession();
        Criteria crit = session.createCriteria(Offer.class);
        crit.add(Restrictions.eq("code", code));
        return (Offer)crit.uniqueResult();
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
	
	public void deleteOfferById(int id) throws Exception{
		Session session=HibernateSessionFactory.getSession();
		Transaction tx=session.beginTransaction();
		Offer o=new Offer();
		o.setOfid(id);
		session.delete(o);
		tx.commit();
		session.close();
	}
	
	public int getIdByEmail(String email) throws Exception
	{
		Session session=HibernateSessionFactory.getSession();
		String hql="select OwnerId from Register where Email=?";
		Query query=session.createQuery(hql);
		query.setParameter(0,email);
		int id=(Integer)query.uniqueResult();
		System.out.println("id:"+id);
		return id;
	}


}
