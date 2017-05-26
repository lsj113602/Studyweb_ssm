package com.lsj.studyweb.model;

import java.util.Date;

public class Article {
    private String refrenceid;

    private String artext;

    private String uid;

    private Integer arqasupport;

    private Date artime;

    private String artitle;

    private String artag;
    
    private DbUser user;

    public DbUser getUser() {
		return user;
	}

	public void setUser(DbUser user) {
		this.user = user;
	}

	public String getRefrenceid() {
        return refrenceid;
    }

    public void setRefrenceid(String refrenceid) {
        this.refrenceid = refrenceid == null ? null : refrenceid.trim();
    }

    public String getArtext() {
        return artext;
    }

    public void setArtext(String artext) {
        this.artext = artext == null ? null : artext.trim();
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public Integer getArqasupport() {
        return arqasupport;
    }

    public void setArqasupport(Integer arqasupport) {
        this.arqasupport = arqasupport;
    }

    public Date getArtime() {
        return artime;
    }

    public void setArtime(Date artime) {
        this.artime = artime;
    }

    public String getArtitle() {
        return artitle;
    }

    public void setArtitle(String artitle) {
        this.artitle = artitle == null ? null : artitle.trim();
    }

    public String getArtag() {
        return artag;
    }

    public void setArtag(String artag) {
        this.artag = artag == null ? null : artag.trim();
    }
}