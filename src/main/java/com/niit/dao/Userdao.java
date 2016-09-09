package com.niit.dao;

import com.niit.model.fay;

public interface Userdao {

	

	public void saveOrUpdate(fay users);

	public void delete(fay users);

	public fay get(int username);

}
