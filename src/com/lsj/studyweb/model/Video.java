package com.lsj.studyweb.model;

import java.util.Date;
import java.util.List;

public class Video {
    private String refrenceid;

    private String zhishidianid;

    private String xueke;

    private String videoname;

    private String videosrc;

    private String videoimgsrc;

    private Date videouptime;

    private String videoupwriter;

    private String videointegral;

    private String videotext;

    private Integer stadynum;

    private Integer mark;
    
    private List<Courseforum>courseforums;

	public List<Courseforum> getCourseforums() {
		return courseforums;
	}

	public void setCourseforums(List<Courseforum> courseforums) {
		this.courseforums = courseforums;
	}

	public String getRefrenceid() {
        return refrenceid;
    }

    public void setRefrenceid(String refrenceid) {
        this.refrenceid = refrenceid == null ? null : refrenceid.trim();
    }

    public String getZhishidianid() {
        return zhishidianid;
    }

    public void setZhishidianid(String zhishidianid) {
        this.zhishidianid = zhishidianid == null ? null : zhishidianid.trim();
    }

    public String getXueke() {
        return xueke;
    }

    public void setXueke(String xueke) {
        this.xueke = xueke == null ? null : xueke.trim();
    }

    public String getVideoname() {
        return videoname;
    }

    public void setVideoname(String videoname) {
        this.videoname = videoname == null ? null : videoname.trim();
    }

    public String getVideosrc() {
        return videosrc;
    }

    public void setVideosrc(String videosrc) {
        this.videosrc = videosrc == null ? null : videosrc.trim();
    }

    public String getVideoimgsrc() {
        return videoimgsrc;
    }

    public void setVideoimgsrc(String videoimgsrc) {
        this.videoimgsrc = videoimgsrc == null ? null : videoimgsrc.trim();
    }

    public Date getVideouptime() {
        return videouptime;
    }

    public void setVideouptime(Date videouptime) {
        this.videouptime = videouptime;
    }

    public String getVideoupwriter() {
        return videoupwriter;
    }

    public void setVideoupwriter(String videoupwriter) {
        this.videoupwriter = videoupwriter == null ? null : videoupwriter.trim();
    }

    public String getVideointegral() {
        return videointegral;
    }

    public void setVideointegral(String videointegral) {
        this.videointegral = videointegral == null ? null : videointegral.trim();
    }

    public String getVideotext() {
        return videotext;
    }

    public void setVideotext(String videotext) {
        this.videotext = videotext == null ? null : videotext.trim();
    }

    public Integer getStadynum() {
        return stadynum;
    }

    public void setStadynum(Integer stadynum) {
        this.stadynum = stadynum;
    }

    public Integer getMark() {
        return mark;
    }

    public void setMark(Integer mark) {
        this.mark = mark;
    }
}