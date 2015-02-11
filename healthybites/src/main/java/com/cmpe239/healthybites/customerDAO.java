package com.cmpe239.healthybites;

import java.util.HashMap;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@SuppressWarnings({"unchecked", "rawtypes"})

public class customerDAO {

	@Autowired private SessionFactory sessionFactory;
	@Transactional
	public Customer checkcredentials(String username, String password) throws NoSuchFieldException {
		Session session = sessionFactory.getCurrentSession();
		List pwd = session.createQuery("from Customer where username='"+username+"'"+ " and password='"+password+"'").list();
		Customer customer = null;
		
		try{
		
			if(!pwd.isEmpty())
			{
			    customer = (Customer)pwd.get(0);
			}
			else
			{
				return null;
			}
			
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return customer;
	}	
	
	@Transactional
	public int RegisterCustomer(Customer customer)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(customer);  
		session.getTransaction().commit();
		
		List list = session.createQuery("select user_info from user_info where username='"+customer.getUsername()+"'").list();
		Object[] obj = (Object[])list.get(0);
		session.close();
		
	    return Integer.parseInt(obj[0].toString());
	}
	
	@Transactional
	public void RegisterProfile(customerprofile[] profile)
	{
		
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		for(int i=1; i<=15; i++){
		session.save(profile[i]);
		session.getTransaction().commit();
	}	
	}
	
	public int getUID(String username)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List list = session.createQuery("select user_info from user_info where username='"+username+"'").list();
		Object[] obj = (Object[])list.get(0);
		session.close();
		
	    return Integer.parseInt(obj[0].toString());
	}
	
	public Customer viewCustomerProfile(int u_id) throws NoSuchFieldException
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List list = session.createQuery("select * from user_info where u_id='"+u_id+"'").list();
		Customer customer = (Customer)list.get(0);
		session.close();
		
	    return customer;
	}
	
	public customerprofile[] viewCustomerHealthProfile(int u_id) throws NoSuchFieldException
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List list = session.createQuery("select * from USER_PROFILE where u_id='"+u_id+"'").list();
		customerprofile[] customerProfile = (customerprofile[])list.get(0);
		session.close();
		
	    return customerProfile;
	}
	
	
	//REVISIT
	public void updateCustomerHealthProfile(int u_id, customerprofile[] profile) throws NoSuchFieldException
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		//Remove the existing user profile from the database
		List list = session.createQuery("delete from USER_PROFILE where u_id='"+u_id+"'").list();
		
		for(int index=0; index<15; index++)
		{
			session.save(profile[index]);  
			session.getTransaction().commit();
		}
		
		session.close();
	}
	
	public UserHistory[] viewCustomerHistory(int u_id) throws NoSuchFieldException
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List list = session.createQuery("select * from USER_HISTORY where u_id='"+u_id+"'").list();
		
		UserHistory[] userHistory = (UserHistory[])list.get(0);
		
		session.close();
		
		return userHistory;
	}
	
	public void logout()
	{
		Session session = sessionFactory.openSession();
		
		session.clear();
		session.close();
	}

	//TBD
	public String getHealthBites()
	{
		return "";
	}
	
	public HashMap getUserBasedRecommendations(int u_id)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List list = session.createQuery("select reco_place,reco_cuisine,reco_rating from user_recommendations where u_id='"+u_id+"'").list();
		HashMap userReco = new HashMap();
		
		for(int i=0; i<list.size(); i++)
		{
			Object[] recoArray = (Object[])list.get(i);
			
			userReco.put("reco_place_"+i,recoArray[0].toString());
			userReco.put("reco_cuisine_"+i,recoArray[1].toString());
			userReco.put("reco_rating_"+i,recoArray[2].toString());
		}
		
		session.close();
		return userReco;
	}

	public String[] getFoodBasedRecommendations(int food_id)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List list = session.createQuery("select food_name from food_recommendations where food_id='"+food_id+"'").list();
		
		String[] itemReco = new String[list.size()];
		
		for(int i=0; i<list.size(); i++)
		{
			Object[] recoArray = (Object[])list.get(i);
			itemReco[i] = recoArray[0].toString();
		}
		
		session.close();
		return itemReco;
	}
	
	
public int getFoodID(String foodName)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();

		List list = session.createQuery("select food_id from food_items where food_name='"+foodName+"'").list();

		Object[] obj = (Object[])list.get(0);
		session.close();
		
	    return Integer.parseInt(obj[0].toString());
	}
}
