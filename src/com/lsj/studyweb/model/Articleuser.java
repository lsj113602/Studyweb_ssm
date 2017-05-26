package com.lsj.studyweb.model;

public class Articleuser {
    private String refrenceid;

    private String arid;

    private Integer uid;

    public String getRefrenceid() {
        return refrenceid;
    }

    public void setRefrenceid(String refrenceid) {
        this.refrenceid = refrenceid == null ? null : refrenceid.trim();
    }

    public String getArid() {
        return arid;
    }

    public void setArid(String arid) {
        this.arid = arid == null ? null : arid.trim();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}