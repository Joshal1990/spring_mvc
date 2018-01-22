package com.event.mngmt.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.event.mngmt.entity.LoginAuthentication;
import com.event.mngmt.exception.DAOException;

@Repository
@Transactional
public class LoginDAO {

	@Autowired
	protected SessionFactory sessionFactory;

	public void loginUserValidation(String user, String pass) throws DAOException {
		Session session = null;
		try {
			session = sessionFactory.openSession();
			List list = session.createQuery("from LoginAuthentication").list();

		} catch (HibernateException e) {
			throw new DAOException(e);
		} finally {
			session.close();
		}
	}
}
