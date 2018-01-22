package com.event.mngmt.exception;

public class DAOException extends Exception{

	private static final long serialVersionUID = 1L;

	public DAOException(String msg) {
		super(msg);
		// TODO Auto-generated constructor stub
	}
	
	public DAOException(String msg,Throwable t) {
		super(msg,t);
		// TODO Auto-generated constructor stub
	}
	public DAOException(Throwable e) {
		super(e);
		// TODO Auto-generated constructor stub
	}
}
