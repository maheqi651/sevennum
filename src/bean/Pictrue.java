package bean;



/**
 * Pictrue entity. @author MyEclipse Persistence Tools
 */

public class Pictrue  implements java.io.Serializable {


    // Fields    

     private Long id;
     private Product product;
     private String url;
     private Integer ispass;


    // Constructors

    /** default constructor */
    public Pictrue() {
    }

	/** minimal constructor */
    public Pictrue(Product product) {
        this.product = product;
    }
    
    /** full constructor */
    public Pictrue(Product product, String url, Integer ispass) {
        this.product = product;
        this.url = url;
        this.ispass = ispass;
    }

   
    // Property accessors

    public Long getId() {
        return this.id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }

    public Product getProduct() {
        return this.product;
    }
    
    public void setProduct(Product product) {
        this.product = product;
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
   








}