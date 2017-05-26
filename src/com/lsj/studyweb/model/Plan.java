package com.lsj.studyweb.model;

import java.util.Date;

public class Plan {
    private String refrenceid;

    private String plantext;

    private String userId;

    private Integer progress;

    private Date starttime;

    private Date endtime;

    private String blongid;

    public String getRefrenceid() {
        return refrenceid;
    }

    public void setRefrenceid(String refrenceid) {
        this.refrenceid = refrenceid == null ? null : refrenceid.trim();
    }

    public String getPlantext() {
        return plantext;
    }

    public void setPlantext(String plantext) {
        this.plantext = plantext == null ? null : plantext.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Integer getProgress() {
        return progress;
    }

    public void setProgress(Integer progress) {
        this.progress = progress;
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

    public String getBlongid() {
        return blongid;
    }

    public void setBlongid(String blongid) {
        this.blongid = blongid;
    }
}