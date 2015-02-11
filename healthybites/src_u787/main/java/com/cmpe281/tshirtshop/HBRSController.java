package com.cmpe281.tshirtshop;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
@RequestMapping("/")


public class HBRSController {
	
    @Autowired private customerDAO customerDAO;  
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request, HttpServletResponse response, HttpSession session){
		return "login";
	}
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
	public String verifyLoginAccess(Model model, final RedirectAttributes redirectedattributes,HttpServletRequest request, HttpServletResponse response, HttpSession session) throws NoSuchFieldException{
    	String invalid_login_message;
    	String username=request.getParameter("username");
		String password=request.getParameter("password");
		session.setAttribute("username", username);
		//System.out.println("reaching here");
		List<customer> verifypassword = customerDAO.checkcredentials(username, password);
		if (verifypassword.size()>0){
			System.out.println("sucess");
			return "success";
		}
		else
		{
			invalid_login_message = "Invalid Credentials";
			redirectedattributes.addFlashAttribute("invalid_login_message",invalid_login_message);
			return "login";
		}		
	}
    
    @RequestMapping(value = "/save", method = RequestMethod.GET)
	public String SaveProfile(Model model, HttpServletRequest request, HttpServletResponse response, HttpSession session){
    	System.out.println("into save---------");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String fullname=request.getParameter("fullname");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String Age=request.getParameter("Age");
		String sex=request.getParameter("sex");
		String Weight=request.getParameter("Weight");
		String Height=request.getParameter("Height");
		
		String insert= customerDAO.SaveProfile(username, password, fullname, address, city);
		if (insert.equalsIgnoreCase("success")){
			System.out.println("Inserted!---------");
			return "redirect:index";
		}
		else
		{	System.out.println("failure");
			return "login";
		}		
	}
    
}