package bean;

import java.sql.Timestamp;
import java.util.Date;


/**
 * Client entity. @author MyEclipse Persistence Tools
 */

public class Client  implements java.io.Serializable {


    // Fields    

     private String username;
     private String realname;
     private String password;
     private String email;
     private String phone;
     private String school;
     private Date addtime;
     private Date lastload;
     private String ip;
     private Integer ispass;


    // Constructors

    /** default constructor */
    public Client() {
    }

	/** minimal constructor */
    public Client(String username) {
        this.username = username;
    }
    
    /** full constructor */
    public Client(String username, String realname, String password, String email, String phone, String school, Date addtime, Date lastload, String ip, Integer ispass) {
        this.username = username;
        this.realname = realname;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.school = school;
        this.addtime = addtime;
        this.lastload = lastload;
        this.ip = ip;
        this.ispass = ispass;
    }

   
    // Property accessors

    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    public String getRealname() {
        return this.realname;
    }
    
    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSchool() {
        return this.school;
    }
    
    public void setSchool(String school) {
        this.school = school;
    }

    public String getIp() {
        return this.ip;
    }
    
    public void setIp(String ip) {
        this.ip = ip;
    }

    public Integer getIspass() {
        return this.ispass;
    }
    
    public void setIspass(Integer ispass) {
        this.ispass = ispass;
    }

	public Date getAddtime() {
		return addtime;
	}

	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Date getLastload() {
		return lastload;
	}

	public void setLastload(Date lastload) {
		this.lastload = lastload;
	}
   








}