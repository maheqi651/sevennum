package bean;

import java.sql.Timestamp;
import java.util.Date;


/**
 * Estimate entity. @author MyEclipse Persistence Tools
 */

public class Estimate  implements java.io.Serializable {


    // Fields    

     private Long id;
     private Long orderid;
     private Long pid;
     private Integer points;
     private String addman;
     private Date addtime;
     private String replay;
     private Date replaytime;
     private String mark;
     private Integer ispass;


    // Constructors

    /** default constructor */
    public Estimate() {
    }

    
    /** full constructor */
    public Estimate(Long orderid, Long pid, Integer points, String addman, Date addtime, String replay, Date replaytime, String mark, Integer ispass) {
        this.orderid = orderid;
        this.pid = pid;
        this.points = points;
        this.addman = addman;
        this.addtime = addtime;
        this.replay = replay;
        this.replaytime = replaytime;
        this.mark = mark;
        this.ispass = ispass;
    }

   
    // Property accessors

    public Long getId() {
        return this.id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }

    public Long getOrderid() {
        return this.orderid;
    }
    
    public void setOrderid(Long orderid) {
        this.orderid = orderid;
    }

    public Long getPid() {
        return this.pid;
    }
    
    public void setPid(Long pid) {
        this.pid = pid;
    }

    public Integer getPoints() {
        return this.points;
    }
    
    public void setPoints(Integer points) {
        this.points = points;
    }

    public String getAddman() {
        return this.addman;
    }
    
    public void setAddman(String addman) {
        this.addman = addman;
    }

    
    public String getReplay() {
        return this.replay;
    }
    
    public void setReplay(String replay) {
        this.replay = replay;
    }

     

    public String getMark() {
        return this.mark;
    }
    
    public void setMark(String mark) {
        this.mark = mark;
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


	public Date getReplaytime() {
		return replaytime;
	}


	public void setReplaytime(Date replaytime) {
		this.replaytime = replaytime;
	}
   








}