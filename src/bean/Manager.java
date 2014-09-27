package bean;

import java.sql.Timestamp;
import java.util.Date;


/**
 * Manager entity. @author MyEclipse Persistence Tools
 */

public class Manager  implements java.io.Serializable {


    // Fields    

     private String username;
     private String password;
     private Integer type;
     private String ip;
     private Date addtime;
     private Date lastload;
     private Integer ispass;


    // Constructors

    /** default constructor */
    public Manager() {
    }

	/** minimal constructor */
    public Manager(String username) {
        this.username = username;
    }
    
    /** full constructor */
    public Manager(String username, String password, Integer type, String ip, Date addtime, Date lastload, Integer ispass) {
        this.username = username;
        this.password = password;
        this.type = type;
        this.ip = ip;
        this.addtime = addtime;
        this.lastload = lastload;
        this.ispass = ispass;
    }

   
    // Property accessors

    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getType() {
        return this.type;
    }
    
    public void setType(Integer type) {
        this.type = type;
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