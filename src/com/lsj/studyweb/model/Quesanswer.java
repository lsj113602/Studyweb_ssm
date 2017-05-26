package com.lsj.studyweb.model;

import java.util.Date;

public class Quesanswer {
    private String refrenceid;

    private String quid;

    private String qatext;

    private Date qatime;

    private Integer qasupport;

    private Integer qaopposition;

    private String uid;
    
    private DbUser user;

    public DbUser getUser() {
		return user;
	}

	public void setUser(DbUser user) {
		this.user = user;
	}

	private Integer isno;

    public String getRefrenceid() {
        return refrenceid;
    }

    public void setRefrenceid(String refrenceid) {
        this.refrenceid = refrenceid == null ? null : refrenceid.trim();
    }

    public String getQuid() {
        return quid;
    }

    public void setQuid(String quid) {
        this.quid = quid == null ? null : quid.trim();
    }

    public String getQatext() {
        return qatext;
    }

    public void setQatext(String qatext) {
        this.qatext = qatext == null ? null : qatext.trim();
    }

    public Date getQatime() {
        return qatime;
    }

    public void setQatime(Date qatime) {
        this.qatime = qatime;
    }

    public Integer getQasupport() {
        return qasupport;
    }

    public void setQasupport(Integer qasupport) {
        this.qasupport = qasupport;
    }

    public Integer getQaopposition() {
        return qaopposition;
    }

    public void setQaopposition(Integer qaopposition) {
        this.qaopposition = qaopposition;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public Integer getIsno() {
        return isno;
    }

    public void setIsno(Integer isno) {
        this.isno = isno;
    }
}