/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khoatd.dto;

import java.math.BigDecimal;
import java.util.Date;

/**
 *
 * @author DANG KHOA
 */
public class ActivityUser {
    private long id; 
    private  String nameactivity;
    private Date createdatetimeactivity;
    private String typeactivity;
    private BigDecimal percentforsave;
    private Boolean isdelete;

    public ActivityUser(long id, String nameactivity, Date createdatetimeactivity, String typeactivity, BigDecimal percentforsave, Boolean isdelete) {
        this.id = id;
        this.nameactivity = nameactivity;
        this.createdatetimeactivity = createdatetimeactivity;
        this.typeactivity = typeactivity;
        this.percentforsave = percentforsave;
        this.isdelete = isdelete;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNameactivity() {
        return nameactivity;
    }

    public void setNameactivity(String nameactivity) {
        this.nameactivity = nameactivity;
    }

    public Date getCreatedatetimeactivity() {
        return createdatetimeactivity;
    }

    public void setCreatedatetimeactivity(Date createdatetimeactivity) {
        this.createdatetimeactivity = createdatetimeactivity;
    }

    public String getTypeactivity() {
        return typeactivity;
    }

    public void setTypeactivity(String typeactivity) {
        this.typeactivity = typeactivity;
    }

    public BigDecimal getPercentforsave() {
        return percentforsave;
    }

    public void setPercentforsave(BigDecimal percentforsave) {
        this.percentforsave = percentforsave;
    }

    public Boolean getIsdelete() {
        return isdelete;
    }

    public void setIsdelete(Boolean isdelete) {
        this.isdelete = isdelete;
    }
    
    
}
