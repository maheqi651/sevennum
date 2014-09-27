package util;
import java.util.Properties;
import org.hibernate.HibernateException;
import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;
public class CreateTables {

	
	private static Configuration config;
	static{
	   try {
	    config=new Configuration().configure();
	   } catch (HibernateException e) {
	    e.printStackTrace();
	   }
	}

	public static void create(){
	   SchemaExport se=null;
	   try {
	    se=new SchemaExport(config);
	    se.setOutputFile("E:\\sql.txt");
	    se.create(true,true);
	   } catch (HibernateException e) {
	    e.printStackTrace();
	   }
	}

	public static void main(String args[]){
	   create();
	}
	
}
