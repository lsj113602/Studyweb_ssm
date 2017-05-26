package com.lsj.studyweb.model;

public class Useranswer {
    private String refrenceid;

    private String qaid;//答案ID

    private String uid;//评论人ID

    private Integer mark;

    public String getRefrenceid() {
        return refrenceid;
    }

    public void setRefrenceid(String refrenceid) {
        this.refrenceid = refrenceid == null ? null : refrenceid.trim();
    }

    public String getQaid() {
        return qaid;
    }

    public void setQaid(String qaid) {
        this.qaid = qaid == null ? null : qaid.trim();
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public Integer getMark() {
        return mark;
    }

    public void setMark(Integer mark) {
        this.mark = mark;
    }
}