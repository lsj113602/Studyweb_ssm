package com.lsj.studyweb.model;

import java.util.Date;

public class Forumreply {
    private String refrenceid;

    private Integer cfId;

    private Integer cfUserid;

    private String frContext;

    private String frUser;

    private Date frTime;

    private Integer frStat;

    private Integer frCount;

    public String getRefrenceid() {
        return refrenceid;
    }

    public void setRefrenceid(String refrenceid) {
        this.refrenceid = refrenceid == null ? null : refrenceid.trim();
    }

    public Integer getCfId() {
        return cfId;
    }

    public void setCfId(Integer cfId) {
        this.cfId = cfId;
    }

    public Integer getCfUserid() {
        return cfUserid;
    }

    public void setCfUserid(Integer cfUserid) {
        this.cfUserid = cfUserid;
    }

    public String getFrContext() {
        return frContext;
    }

    public void setFrContext(String frContext) {
        this.frContext = frContext == null ? null : frContext.trim();
    }

    public String getFrUser() {
        return frUser;
    }

    public void setFrUser(String frUser) {
        this.frUser = frUser == null ? null : frUser.trim();
    }

    public Date getFrTime() {
        return frTime;
    }

    public void setFrTime(Date frTime) {
        this.frTime = frTime;
    }

    public Integer getFrStat() {
        return frStat;
    }

    public void setFrStat(Integer frStat) {
        this.frStat = frStat;
    }

    public Integer getFrCount() {
        return frCount;
    }

    public void setFrCount(Integer frCount) {
        this.frCount = frCount;
    }
}