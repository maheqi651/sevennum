package bean;

import java.sql.Timestamp;
import java.util.Date;


/**
 * Orderform entity. @author MyEclipse Persistence Tools
 */

public class Orderform  implements java.io.Serializable {


    // Fields    

     private Long id;
     private String orderid;
     private String address;
     private Date addtime;
     private Date sendtime;
     private Integer judge;
     private Date finishtime;
     private Integer paytime;


    // Constructors

    /** default constructor */
    public Orderform() {
    }

    
    /** full constructor */
    public Orderform(String orderid, String address, Date addtime, Date sendtime, Integer judge, Date finishtime, Integer paytime) {
        this.orderid = orderid;
        this.address = address;
        this.addtime = addtime;
        this.sendtime = sendtime;
        this.judge = judge;
        this.finishtime = finishtime;
        this.paytime = paytime;
    }

   
    // Property accessors

    public Long getId() {
        return this.id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }

    public String getOrderid() {
        return this.orderid;
    }
    
    public void setOrderid(String orderid) {
        this.orderid = orderid;
    }

    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    
    public Integer getJudge() {
        return this.judge;
    }
    
    public void setJudge(Integer judge) {
        this.judge = judge;
    }

     

    public Integer getPaytime() {
        return this.paytime;
    }
    
    public void setPaytime(Integer paytime) {
        this.paytime = paytime;
    }


	public Date getAddtime() {
		return addtime;
	}


	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}


	public Date getSendtime() {
		return sendtime;
	}


	public void setSendtime(Date sendtime) {
		this.sendtime = sendtime;
	}


	public Date getFinishtime() {
		return finishtime;
	}


	public void setFinishtime(Date finishtime) {
		this.finishtime = finishtime;
	}
   








}