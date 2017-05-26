package com.lsj.studyweb.model;

public class Usercontach {
    private String refrenceid;

    private String userId;

    private String videoid;

    private Integer stadynum;

    public String getRefrenceid() {
        return refrenceid;
    }

    public void setRefrenceid(String refrenceid) {
        this.refrenceid = refrenceid == null ? null : refrenceid.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getVideoid() {
        return videoid;
    }

    public void setVideoid(String videoid) {
        this.videoid = videoid == null ? null : videoid.trim();
    }

    public Integer getStadynum() {
        return stadynum;
    }

    public void setStadynum(Integer stadynum) {
        this.stadynum = stadynum;
    }
}