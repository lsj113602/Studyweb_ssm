package com.lsj.studyweb.model;

import java.util.Date;
import java.util.List;

public class Courseforum {
    private String refrenceid;

    private String cfTitle;

    private String cfContext;

    private String cfCourse;

    private String cfTags;

    private Integer cfView;

    private Integer cfCount;

    private Date cfTime;

    private String cfUserid;
    
    private DbUser user;

	private Integer cfTop;

    private Integer cfIdtj;

    private Integer cfStat;
    
    private List<Forumreply>forums;
    public List<Forumreply> getForums() {
		return forums;
	}

	public void setForums(List<Forumreply> forums) {
		this.forums = forums;
	}

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

    public String getCfTitle() {
        return cfTitle;
    }

    public void setCfTitle(String cfTitle) {
        this.cfTitle = cfTitle == null ? null : cfTitle.trim();
    }

    public String getCfContext() {
        return cfContext;
    }

    public void setCfContext(String cfContext) {
        this.cfContext = cfContext == null ? null : cfContext.trim();
    }

    public String getCfCourse() {
        return cfCourse;
    }

    public void setCfCourse(String cfCourse) {
        this.cfCourse = cfCourse == null ? null : cfCourse.trim();
    }

    public String getCfTags() {
        return cfTags;
    }

    public void setCfTags(String cfTags) {
        this.cfTags = cfTags == null ? null : cfTags.trim();
    }

    public Integer getCfView() {
        return cfView;
    }

    public void setCfView(Integer cfView) {
        this.cfView = cfView;
    }

    public Integer getCfCount() {
        return cfCount;
    }

    public void setCfCount(Integer cfCount) {
        this.cfCount = cfCount;
    }

    public Date getCfTime() {
        return cfTime;
    }

    public void setCfTime(Date cfTime) {
        this.cfTime = cfTime;
    }

    public String getCfUserid() {
        return cfUserid;
    }

    public void setCfUserid(String cfUserid) {
        this.cfUserid = cfUserid;
    }

    public Integer getCfTop() {
        return cfTop;
    }

    public void setCfTop(Integer cfTop) {
        this.cfTop = cfTop;
    }

    public Integer getCfIdtj() {
        return cfIdtj;
    }

    public void setCfIdtj(Integer cfIdtj) {
        this.cfIdtj = cfIdtj;
    }

    public Integer getCfStat() {
        return cfStat;
    }

    public void setCfStat(Integer cfStat) {
        this.cfStat = cfStat;
    }
}