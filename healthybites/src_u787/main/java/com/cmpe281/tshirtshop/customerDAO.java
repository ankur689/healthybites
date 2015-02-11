package com.cmpe281.tshirtshop;

import java.lang.reflect.Field;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cmpe281.tshirtshop.customer;

@Repository
@SuppressWarnings({"unchecked", "rawtypes"})

public class customerDAO {

	@Autowired private SessionFactory sessionFactory;
	@Transactional
	public List<customer> checkcredentials(String username, String password) throws NoSuchFieldException {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
//		List pwd = session.createQuery("from customer where username='"+username+"'"+ " and password='"+password+"'").list();
		
		List pwd = session.createQuery("select customerID,fullname,address from customer where username='"+username+"'"+ " and password='"+password+"'").list();
		
		try
		{
			if(!pwd.isEmpty())
			{
//				customer cust= (customer)pwd.get(0);
//				System.out.println("------------"+cust.getAddress());
				/*for(Object o : pwd)*/ {
				    Object[] obj = (Object[])pwd.get(0);
				    System.out.println(obj[0].toString());
				    System.out.println(obj[1].toString());
				    System.out.println(obj[2].toString());
				}
				
				
				//List newList = pwd.get(0);
				//System.out.println(newList.get(0).toString());
				//System.out.println(newList.get(1).toString());
				//System.out.println(newList.get(2).toString());
				//System.out.println(pwd.get(0));
			}
			
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pwd;
		
	}	
	
	@Transactional
	public String SaveProfile(String username,String password, String fullname, String address,String city) {
		
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		customer customer = new customer();
		customer.setusername(username);
		customer.setPassword(password);
		customer.setAddress(address);
		customer.setCity(city);
		session.save(customer);  
		session.getTransaction().commit();
		return "success";
	}
	public List<customer> deleteCustomer(int u_id) throws NoSuchFieldException {
		return null;
	}
	
	public List<customer> viewCustomerProfile(int u_id) throws NoSuchFieldException {
		return null;
	}
	
	public void updateCustomerProfile(customerprofile profile) throws NoSuchFieldException {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("UPDATE USER_PROFILE set"+
		"u_age = :u_age and u_gender = :u_gender and u_height = :u_height and u_weight = :u_weight and u_bmiIndex = :u_bmiIndex"+
		"and u_bpSystolic = :u_bpSystolic and u_bpDiastolic = :u_bpDiastolic and u_diabetic = :u_diabetic"+
		"and u_diabeticHistory = :u_diabeticHistory and u_cholestrolLDL = :u_cholestrolLDL"+
		"and u_heartPatient = :u_heartPatient and u_physicalActivity = :u_physicalActivity"+
		"and u_dailyExercise= :u_dailyExercise"
				+" where u_id = :u_id");
			query.setParameter("u_id", profile.getU_id());
			query.setParameter("u_age", profile.getU_age());
			query.setParameter("u_gender", profile.getU_gender());
			query.setParameter("u_height", profile.getU_height());
			query.setParameter("u_weight", profile.getU_weight());
			query.setParameter("u_bmiIndex", profile.getU_bmiIndex());
			query.setParameter("u_bpSystolic", profile.getU_bpSystolic());
			query.setParameter("u_bpDiastolic", profile.getU_bpDiastolic());
			query.setParameter("u_diabetic", profile.getU_diabetic());
			query.setParameter("u_diabeticHistory", profile.getU_diabeticHistory());
			query.setParameter("u_cholestrolLDL", profile.getU_cholestrolLDL());
			query.setParameter("u_heartPatient", profile.getU_heartPatient());
			query.setParameter("u_physicalActivity", profile.getU_physicalActivity());
			query.setParameter("u_dailyExercise", profile.getU_dailyExercise());
			query.executeUpdate();
	}
	
	public List<customer> viewCustomerHistory(int u_id) throws NoSuchFieldException {
		return null;
	}
	
	
	
}

