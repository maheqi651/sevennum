package bean;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * Product entity. @author MyEclipse Persistence Tools
 */

public class Product  implements java.io.Serializable {


    // Fields    

     private Long id;
     private Producttype producttype;
     private String name;
     private String desc;
     private Date addtime;
     private String info;
     private Double currentprice;
     private Double costprice;
     private String url;
     private Integer stock;
     private Integer points;
     private String submiter;
     private Integer ispass;
     private Set pictrues = new HashSet(0);


    // Constructors

    /** default constructor */
    public Product() {
    }

	/** minimal constructor */
    public Product(Producttype producttype) {
        this.producttype = producttype;
    }
    
    /** full constructor */
    public Product(Producttype producttype, String name, String desc, Date addtime, String info, Double currentprice, Double costprice, String url, Integer stock, Integer points, String submiter, Integer ispass, Set pictrues) {
        this.producttype = producttype;
        this.name = name;
        this.desc = desc;
        this.addtime = addtime;
        this.info = info;
        this.currentprice = currentprice;
        this.costprice = costprice;
        this.url = url;
        this.stock = stock;
        this.points = points;
        this.submiter = submiter;
        this.ispass = ispass;
        this.pictrues = pictrues;
    }

   
    // Property accessors

    public Long getId() {
        return this.id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }

    public Producttype getProducttype() {
        return this.producttype;
    }
    
    public void setProducttype(Producttype producttype) {
        this.producttype = producttype;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return this.desc;
    }
    
    public void setDesc(String desc) {
        this.desc = desc;
    }

     

    public Date getAddtime() {
		return addtime;
	}

	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public String getInfo() {
        return this.info;
    }
    
    public void setInfo(String info) {
        this.info = info;
    }

    public Double getCurrentprice() {
        return this.currentprice;
    }
    
    public void setCurrentprice(Double currentprice) {
        this.currentprice = currentprice;
    }

    public Double getCostprice() {
        return this.costprice;
    }
    
    public void setCostprice(Double costprice) {
        this.costprice = costprice;
    }

    public String getUrl() {
        return this.url;
    }
    
    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getStock() {
        return this.stock;
    }
    
    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getPoints() {
        return this.points;
    }
    
    public void setPoints(Integer points) {
        this.points = points;
    }

    public String getSubmiter() {
        return this.submiter;
    }
    
    public void setSubmiter(String submiter) {
        this.submiter = submiter;
    }

    public Integer getIspass() {
        return this.ispass;
    }
    
    public void setIspass(Integer ispass) {
        this.ispass = ispass;
    }

    public Set getPictrues() {
        return this.pictrues;
    }
    
    public void setPictrues(Set pictrues) {
        this.pictrues = pictrues;
    }
   








}