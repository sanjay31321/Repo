package com.sanjay31321.sys.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sanjay31321.sys.dao.UserDao;
import com.sanjay31321.sys.model.User;
import com.sanjay31321.sys.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	@Transactional
	public void insert(User user) {
		userDao.addUser(user);
	}

}
