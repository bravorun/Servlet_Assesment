package com.ymsli.web.listner;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class DbDriverListner implements ServletContextListener {

	public void contextInitialized(ServletContextEvent sce) {
		String driverName=sce.getServletContext().getInitParameter("jdbc.driver");
		try {
			Class.forName(driverName);
		}catch(ClassNotFoundException ex) {
			ex.printStackTrace();
		}
	}

	public void contextDestroyed(ServletContextEvent sce) {

	}

}