package com.sanjay31321.sys.controller;

import java.util.Locale;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sanjay31321.sys.model.User;
import com.sanjay31321.sys.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@ModelAttribute("user") User user, Locale locale) {
		logger.info("Welcome to Login page ! The client locale is {}.", locale);
			
		return "login";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup(@ModelAttribute("user") User user, Locale locale) {
		logger.info("Welcome to signup page ! The client locale is {}.", locale);		
		return "signup";
	}
	
	@RequestMapping(value = "/signup",  method = RequestMethod.POST)
	public String register(@Valid @ModelAttribute ("user") User user, BindingResult result) {
		userService.insert(user);
		
		return "login";
	}
	
	
	@RequestMapping(value = "/forgetpassword", method = RequestMethod.GET)
	public String forgetpassword(@ModelAttribute("user") User user, Locale locale) {
		logger.info("Welcome to forget password page ! The client locale is {}.", locale);
			
		return "forgetpassword";
	}

}
