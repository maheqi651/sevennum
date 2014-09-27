package bean;

import java.sql.Timestamp;
import java.util.Date;


/**
 * Active entity. @author MyEclipse Persistence Tools
 */

public class Active  implements java.io.Serializable {


    // Fields    

     private Long id;
     private Integer type;
     private Long pid;
     private Integer weight;
     private Integer count;
     private Date addtime;
     private Integer sellout;
     private Date selltime;
     private Integer ispass;


    // Constructors

    /** default constructor */
    public Active() {
    }

    
    /** full constructor */
    public Active(Integer type, Long pid, Integer weight, Integer count, Date addtime, Integer sellout, Date selltime, Integer ispass) {
        this.type = type;
        this.pid = pid;
        this.weight = weight;
        this.count = count;
        this.addtime = addtime;
        this.sellout = sellout;
        this.selltime = selltime;
        this.ispass = ispass;
    }

   
    // Property accessors

    public Long getId() {
        return this.id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }

    public Integer getType() {
        return this.type;
    }
    
    public void setType(Integer type) {
        this.type = type;
    }

    public Long getPid() {
        return this.pid;
    }
    
    public void setPid(Long pid) {
        this.pid = pid;
    }

    public Integer getWeight() {
        return this.weight;
    }
    
    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public Integer getCount() {
        return this.count;
    }
    
    public void setCount(Integer count) {
        this.count = count;
    }
 

    public Integer getSellout() {
        return this.sellout;
    }
    
    public void setSellout(Integer sellout) {
        this.sellout = sellout;
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


	public Date getSelltime() {
		return selltime;
	}


	public void setSelltime(Date selltime) {
		this.selltime = selltime;
	}
   








}