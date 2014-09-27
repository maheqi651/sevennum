package bean;

import java.util.HashSet;
import java.util.Set;


/**
 * Producttype entity. @author MyEclipse Persistence Tools
 */

public class Producttype  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Integer typeorder;
     private String typename;
     private Integer ispass;
     private Set products = new HashSet(0);


    // Constructors

    /** default constructor */
    public Producttype() {
    }

    
    /** full constructor */
    public Producttype(Integer typeorder, String typename, Integer ispass, Set products) {
        this.typeorder = typeorder;
        this.typename = typename;
        this.ispass = ispass;
        this.products = products;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getTypeorder() {
        return this.typeorder;
    }
    
    public void setTypeorder(Integer typeorder) {
        this.typeorder = typeorder;
    }

    public String getTypename() {
        return this.typename;
    }
    
    public void setTypename(String typename) {
        this.typename = typename;
    }

    public Integer getIspass() {
        return this.ispass;
    }
    
    public void setIspass(Integer ispass) {
        this.ispass = ispass;
    }

    public Set getProducts() {
        return this.products;
    }
    
    public void setProducts(Set products) {
        this.products = products;
    }
   








}