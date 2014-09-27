package util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class CreatePath {

	
	public static String getPath(){
		
		 Date now =new Date();
		 SimpleDateFormat d6=new SimpleDateFormat("yy-mm-dd hh-mm-ss MM");
		// DateFormat d6 = DateFormat.getDateTimeInstance(DateFormat.LONG,DateFormat.LONG); //��ʾ���ڡ�ʱ�䣨��ȷ���룩
	      String str6 = d6.format(now);
	      str6=str6.replace("-","");
	      str6=str6.replace(" ", "");
	      Random rom=new Random();
	      str6=str6+rom.nextInt(10000);		
		  return str6;
	}
	  public static String delImageUrl(String path){
		
		
		  int count =path.lastIndexOf(".")+1;
		  
		  
		return  path.substring(count);
		
	}
	
	
}
