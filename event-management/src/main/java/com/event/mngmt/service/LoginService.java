package com.event.mngmt.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.event.mngmt.dao.LoginDAO;
import com.event.mngmt.exception.DAOException;
import com.event.mngmt.exception.ServiceException;

@Service
public class LoginService {
	@Autowired
	protected LoginDAO loginDAO;

	public void loginUserValidation(String user, String pass) throws ServiceException{
		try {
			loginDAO.loginUserValidation(user, pass);
		} catch (DAOException e) {
			throw new ServiceException(e);
		}
	}
}
