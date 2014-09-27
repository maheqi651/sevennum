package util;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import javax.transaction.Synchronization;

import org.hibernate.annotations.Synchronize;
public class MD5Test {
	public static Object initsys=new Object();
	public synchronized static String makeMD5(String str){
		//定义线程安全
		MessageDigest mac;   
		try {
		//	SecretKey secretKey = new SecretKeySpec(str.getBytes("UTF-8"), "MD5");
			 mac = MessageDigest.getInstance("MD5");   
		 
			try {
				mac.update(str.getBytes("UTF-8"));
			} catch (UnsupportedEncodingException e) {
			 
				e.printStackTrace();
			}
		 
			 String pwd = new BigInteger(1, mac.digest()).toString(16);   
			   
			    return pwd;   
			
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
 
	public static void main(String[] args) {
//		String str=makeMD5("loansys1234");
//		 System.err.println(str);   
//		 //c174ea6adbd14c95e498f3a5fad3ad07
//		 bean.Manager manager=Manager.getInstance().createManagerDao().dologin("admin", str); 
//		 if(manager!=null)
//		 System.out.println(manager.toString());
//		 else
//			 System.out.println("-------manager----------");
//		 
//		 System.out.println("-------bf---------");
//		 
//		 bean.Bankstaff bf=Manager.getInstance().createBankstaffDao().dologin("admin", str);
//		// System.out.println(bf.getRealname()+bf.getBank().getBankname());
//		 
//		 System.out.println("-------bc---------");
//		 
//		 bean.Custommanager bc=Manager.getInstance().createCustommanagerDao().dologin("admin", str, 0);
//		 System.out.println(bc.getRealname());
	}

}
