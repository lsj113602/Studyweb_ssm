package com.lsj.studyweb.model;

import java.util.Date;
import java.util.List;

public class Question {
    private String refrenceid;

    private String qutitle;

    private String content;

    private String uid;
    
    private DbUser user;
    
    private List<Quesanswer>answer;

    public List<Quesanswer> getAnswer() {
		return answer;
	}

	public void setAnswer(List<Quesanswer> answer) {
		this.answer = answer;
	}

	public DbUser getUser() {
		return user;
	}

	public void setUser(DbUser user) {
		this.user = user;
	}

	private Date qutime;

    private String quadoptid;

    private String qutag;

    public String getRefrenceid() {
        return refrenceid;
    }

    public void setRefrenceid(String refrenceid) {
        this.refrenceid = refrenceid == null ? null : refrenceid.trim();
    }

    public String getQutitle() {
        return qutitle;
    }

    public void setQutitle(String qutitle) {
        this.qutitle = qutitle == null ? null : qutitle.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public Date getQutime() {
        return qutime;
    }

    public void setQutime(Date qutime) {
        this.qutime = qutime;
    }

    public String getQuadoptid() {
        return quadoptid;
    }

    public void setQuadoptid(String quadoptid) {
        this.quadoptid = quadoptid == null ? null : quadoptid.trim();
    }

    public String getQutag() {
        return qutag;
    }

    public void setQutag(String qutag) {
        this.qutag = qutag == null ? null : qutag.trim();
    }
}