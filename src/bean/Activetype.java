package bean;

import java.sql.Timestamp;
import java.util.Date;


/**
 * Activetype entity. @author MyEclipse Persistence Tools
 */

public class Activetype  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private String name;
     private Date addtime;
     private Date starttime;
     private Date endtime;
     private Double discount;
     private String desc;
     private String url;
     private Integer ispass;


    // Constructors

    /** default constructor */
    public Activetype() {
    }

    
    /** full constructor */
    public Activetype(String name, Date addtime, Date starttime, Date endtime, Double discount, String desc, String url, Integer ispass) {
        this.name = name;
        this.addtime = addtime;
        this.starttime = starttime;
        this.endtime = endtime;
        this.discount = discount;
        this.desc = desc;
        this.url = url;
        this.ispass = ispass;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    

    
    public Double getDiscount() {
        return this.discount;
    }
    
    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public String getDesc() {
        return this.desc;
    }
    
    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getUrl() {
        return this.url;
    }
    
    public void setUrl(String url) {
        this.url = url;
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


	public Date getStarttime() {
		return starttime;
	}


	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}


	public Date getEndtime() {
		return endtime;
	}


	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

}