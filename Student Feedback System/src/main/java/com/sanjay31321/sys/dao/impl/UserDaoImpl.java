package com.sanjay31321.sys.dao.impl;



import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sanjay31321.sys.dao.UserDao;
import com.sanjay31321.sys.model.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory session;
	
	@Override
	public void addUser(User user) {
		session.getCurrentSession().save(user);
	}

}
