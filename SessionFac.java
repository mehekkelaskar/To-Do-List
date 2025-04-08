package util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import entity.MappingClass;

public class SessionFac {
	
	private static final SessionFactory sf;
	static {
		try {
			 Configuration configure = new Configuration()
		                .configure("hibernate.cfg.xml")
		                .addAnnotatedClass(MappingClass.class);

		             sf = configure.buildSessionFactory();
		            
			
		
	}
		catch(Exception e) {
			System.err.print("Sesssion Factory creationfailder"+e);
			 e.printStackTrace(); 
	            throw new ExceptionInInitializerError(e);
		}
	}
	public static  SessionFactory getSessionFactory() {
		return sf;
	}
	

}
