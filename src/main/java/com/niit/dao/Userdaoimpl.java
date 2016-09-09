package com.niit.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.fay;

@Repository("usersDAO")
public class Userdaoimpl implements Userdao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void saveOrUpdate(fay users) {
		
		Session session=sessionFactory.openSession();
		session.save(users);
		Transaction t=session.beginTransaction();
		t.commit();
		session.close();
	}

	@Override
	public void delete(fay users) {
		
		
	}

	@Override
	public fay get(int username) {
		
		return null;
	}

}
