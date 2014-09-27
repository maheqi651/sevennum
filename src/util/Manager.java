package util;

import service.DAOFactory;

public class Manager {
	private static Object initLock = new Object();
	public static String className = "util.DAOFactory";
	public static DAOFactory factory = null;
	
	public static DAOFactory getInstance() {
		if(null == factory) {
			synchronized(initLock) {
				String classNameProp = DAOConfig.getProperty("DAOFactory.className");
				if(classNameProp != null) {
					className = classNameProp;
				}
				try {
					Class c = Class.forName(className);
					factory = (DAOFactory) c.newInstance();
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
		}
		return factory;
	}
}
