package com.cmpe239.healthybites;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
@RequestMapping("/")


public class HBRSController {
	
    @Autowired private customerDAO customerDAO;
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model,HttpServletRequest request, HttpServletResponse response, HttpSession session){
    
		return "accountlogin";
	}
    
    @RequestMapping(value = "/signin", method = RequestMethod.GET)
	public String verifyLoginAccess(Model model, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws NoSuchFieldException{
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		session.setAttribute("username", username);
		System.out.println("reaching here---------------------------");
		Customer customer = customerDAO.checkcredentials(username, password);
		if (customer != null)
		{
			System.out.println("sucess");
			return "index";
		}
		else
		{	System.out.println("failure");
			return "accountlogin";
		}		
	}
    
    @RequestMapping(value = "/Home", method = RequestMethod.GET)
	public String NavigateToLoginPage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
    	System.out.println("i am hereeeeeeee");
    return "index";
    }
    
    @RequestMapping(value = "/Logout", method = RequestMethod.GET)
	public String NavigateToLogoutPage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
    return "accountlogin";
    }
    
    @RequestMapping(value = "/UserAccount", method = RequestMethod.GET)
	public String NavigateTouserAccountPage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
    return "useraccount";
    }
    
    @RequestMapping(value = "/History", method = RequestMethod.GET)
	public String NavigateToHistoryPage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
    return "history";
    }
    @RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public String NavigateToContactUsPage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
    return "contact";
    }
    
    
    @RequestMapping(value = "/save", method = RequestMethod.GET)
	public void SaveProfile(Model model, HttpServletRequest request, HttpServletResponse response, HttpSession session)
    {
    	MessageConstants m = new MessageConstants();
    	Customer customer = new Customer();
    	customer.setUsername(request.getParameter("register_username"));
    	customer.setPassword(request.getParameter("register_password"));
    	customer.setFullname(request.getParameter("fullname"));
    	customer.setAddress(request.getParameter("address"));
    	customer.setCity(request.getParameter("city"));
    	customer.setZipCode(Integer.parseInt(request.getParameter("zipcode")));
    

    	int u_id = customerDAO.RegisterCustomer(customer);    	
    	//Set the customer health profile
		customerprofile[] profile = new customerprofile[15];

		
		for(int i=1; i<=15; i++)
		{
			switch(i)
			{
				case MessageConstants.USER_AGE:
					profile[m.USER_AGE] = new customerprofile(u_id,m.USER_AGE,Float.parseFloat(request.getParameter("age").toString()));
					break;
					
				case MessageConstants.USER_GENDER:
					if(request.getParameter("sex").toString().compareToIgnoreCase("m") == 0)
						profile[m.USER_GENDER] = new customerprofile(u_id,m.USER_GENDER,0);
					else
						profile[m.USER_GENDER] = new customerprofile(u_id,m.USER_GENDER,1);
					break;
					
				case MessageConstants.USER_HEIGHT:
					profile[m.USER_HEIGHT] = new customerprofile(u_id,m.USER_HEIGHT,Float.parseFloat(request.getParameter("height").toString()));
					break;
				case MessageConstants.USER_WEIGHT:
					profile[m.USER_WEIGHT] = new customerprofile(u_id,m.USER_WEIGHT,Float.parseFloat(request.getParameter("weight").toString()));
					break;
					
				case MessageConstants.USER_BMI_INDEX:
					float weight = profile[m.USER_WEIGHT].getValue();
					float height = profile[m.USER_HEIGHT].getValue();
					profile[m.USER_BMI_INDEX] = new customerprofile(u_id,m.USER_AGE,(float)((weight*0.453592)/((height/100)*(height/100))));
					break;
					
				case MessageConstants.USER_BMI_RATING:
					if(Float.compare(profile[m.USER_BMI_INDEX].getValue(), (float) 18.5)<0)
						profile[m.USER_BMI_RATING] = new customerprofile(u_id,m.USER_BMI_RATING,1);
					else if(Float.compare(profile[m.USER_BMI_INDEX].getValue(), (float) 18.5)>=0 &&
							Float.compare(profile[m.USER_BMI_INDEX].getValue(), (float) 24.9)<=0)
						profile[m.USER_BMI_RATING] = new customerprofile(u_id,m.USER_BMI_RATING,2);
					else if(Float.compare(profile[m.USER_BMI_INDEX].getValue(), (float) 25.0)>=0 &&
							Float.compare(profile[m.USER_BMI_INDEX].getValue(), (float) 25.9)<=0)
						profile[m.USER_BMI_RATING] = new customerprofile(u_id,m.USER_BMI_RATING,3);
					else if(Float.compare(profile[m.USER_BMI_INDEX].getValue(), (float) 30.0)>=0 &&
							Float.compare(profile[m.USER_BMI_INDEX].getValue(), (float) 30.9)<=0)
						profile[m.USER_BMI_RATING] = new customerprofile(u_id,m.USER_BMI_RATING,4);
					else if(Float.compare(profile[m.USER_BMI_INDEX].getValue(), (float) 40)>=0)
						profile[m.USER_BMI_RATING] = new customerprofile(u_id,m.USER_BMI_RATING,5);
					break;
					
				case MessageConstants.USER_BP_SYSTOLIC:
					profile[m.USER_BP_SYSTOLIC] = new customerprofile(u_id,m.USER_BP_SYSTOLIC,Float.parseFloat(request.getParameter("bloodpressuresystolic").toString()));
					break;

				case MessageConstants.USER_BP_DIASTOLIC:
					profile[m.USER_BP_DIASTOLIC] = new customerprofile(u_id,m.USER_BP_DIASTOLIC,Float.parseFloat(request.getParameter("bloodpressurediastolic").toString()));
					break;
				
				case MessageConstants.USER_DIABETIC:
				
					if(request.getParameter("heartdisease").toString().compareToIgnoreCase("yes") == 0)
						profile[m.USER_DIABETIC] = new customerprofile(u_id,m.USER_DIABETIC,0);
					else
						profile[m.USER_DIABETIC] = new customerprofile(u_id,m.USER_DIABETIC,1);
					//profile[m.USER_DIABETIC] = new customerprofile(u_id,m.USER_DIABETIC,Float.parseFloat(request.getParameter("diabetic").toString()));
					break;
					
				case MessageConstants.USER_CHOLESTROL_LDL:
					profile[m.USER_CHOLESTROL_LDL] = new customerprofile(u_id,m.USER_CHOLESTROL_LDL,Float.parseFloat(request.getParameter("cholesterol").toString()));
					break;
					
				case MessageConstants.USER_HEART_PATIENT:
				
					if(request.getParameter("heartdisease").toString().compareToIgnoreCase("yes") == 0)
						profile[m.USER_HEART_PATIENT] = new customerprofile(u_id,m.USER_HEART_PATIENT,0);
					else
						profile[m.USER_HEART_PATIENT] = new customerprofile(u_id,m.USER_HEART_PATIENT,1);
					
				//	profile[m.USER_HEART_PATIENT] = new customerprofile(u_id,m.USER_HEART_PATIENT,Float.parseFloat(request.getParameter("heartdisease").toString()));
					break;
					
				case MessageConstants.USER_PHYSICALACTIVITY:
					
					if(request.getParameter("physicalexercise").toString().compareToIgnoreCase("never") == 1)
						profile[m.USER_PHYSICALACTIVITY] = new customerprofile(u_id,m.USER_PHYSICALACTIVITY,1);
					else if (request.getParameter("physicalexercise").toString().compareToIgnoreCase("rarely") == 2)
						profile[m.USER_PHYSICALACTIVITY] = new customerprofile(u_id,m.USER_PHYSICALACTIVITY,2);
					else
						profile[m.USER_PHYSICALACTIVITY] = new customerprofile(u_id,m.USER_PHYSICALACTIVITY,3);
					
					
					
					//profile[m.USER_PHYSICALACTIVITY] = new customerprofile(u_id,m.USER_PHYSICALACTIVITY,Float.parseFloat(request.getParameter("age").toString()));
					break;
					
				case MessageConstants.USER_DIALY_EXERCISE:
					
					if(request.getParameter("lifestyle").toString().compareToIgnoreCase("sedentary") == 1)
						profile[m.USER_DIALY_EXERCISE] = new customerprofile(u_id,m.USER_DIALY_EXERCISE,1);
					else if (request.getParameter("physicalexercise").toString().compareToIgnoreCase("moderate") == 2)
						profile[m.USER_DIALY_EXERCISE] = new customerprofile(u_id,m.USER_DIALY_EXERCISE,2);
					else
						profile[m.USER_DIALY_EXERCISE] = new customerprofile(u_id,m.USER_DIALY_EXERCISE,3);
					
					
				//	profile[m.USER_DIALY_EXERCISE] = new customerprofile(u_id,m.USER_DIALY_EXERCISE,Float.parseFloat(request.getParameter("age").toString()));
					break;
					
				case MessageConstants.USER_HEALTH_RATING:
					//float rating = getUserHealthRating(profile);
					//profile[m.USER_HEALTH_RATING] = new customerprofile(u_id,m.USER_HEALTH_RATING,rating);
					break;
			}
		}
		
		customerDAO.RegisterProfile(profile); 
		
	}

	private void getUserHealthRating(customerprofile[] profile) {
		// TODO Auto-generated method stub
		
	}
}