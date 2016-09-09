package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.Userdao;
import com.niit.model.fay;

@Repository("usersServiceDAO")
public class UserServiceimpl implements UserServicedao{

	@Autowired
	private Userdao usersDAO;
	
	public void UserRegistration(fay users) {
		usersDAO.saveOrUpdate(users);
	}


}
