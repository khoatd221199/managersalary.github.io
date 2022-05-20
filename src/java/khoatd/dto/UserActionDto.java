package khoatd.dto;

import java.math.BigDecimal;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author DANG KHOA
 */
public class UserActionDto {
  private  long id;
  private  long accountuserid;
   private long activityuserid;
   private BigDecimal financemoney;
   private String status;
   private  Date datetimecreate;

    public UserActionDto(long id, long accountuserid, long activityuserid, BigDecimal financemoney, String status, Date datetimecreate) {
        this.id = id;
        this.accountuserid = accountuserid;
        this.activityuserid = activityuserid;
        this.financemoney = financemoney;
        this.status = status;
        this.datetimecreate = datetimecreate;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getAccountuserid() {
        return accountuserid;
    }

    public void setAccountuserid(long accountuserid) {
        this.accountuserid = accountuserid;
    }

    public long getActivityuserid() {
        return activityuserid;
    }

    public void setActivityuserid(long activityuserid) {
        this.activityuserid = activityuserid;
    }

    public BigDecimal getFinancemoney() {
        return financemoney;
    }

    public void setFinancemoney(BigDecimal financemoney) {
        this.financemoney = financemoney;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getDatetimecreate() {
        return datetimecreate;
    }

    public void setDatetimecreate(Date datetimecreate) {
        this.datetimecreate = datetimecreate;
    }
   

    
   
}
