package com.lsj.studyweb.model;

import java.util.Date;

public class Resources {
    private String refrenceid;

    private String restitle;

    private String restext;

    private String rescategory;

    private String reskonwge;

    private String rescourse;

    private String filesrc;

    private String fileimgsrc;

    private String uploadauthor;

    private Date uploadtime;

    private Integer downnum;

    public String getRefrenceid() {
        return refrenceid;
    }

    public void setRefrenceid(String refrenceid) {
        this.refrenceid = refrenceid == null ? null : refrenceid.trim();
    }

    public String getRestitle() {
        return restitle;
    }

    public void setRestitle(String restitle) {
        this.restitle = restitle == null ? null : restitle.trim();
    }

    public String getRestext() {
        return restext;
    }

    public void setRestext(String restext) {
        this.restext = restext == null ? null : restext.trim();
    }

    public String getRescategory() {
        return rescategory;
    }

    public void setRescategory(String rescategory) {
        this.rescategory = rescategory == null ? null : rescategory.trim();
    }

    public String getReskonwge() {
        return reskonwge;
    }

    public void setReskonwge(String reskonwge) {
        this.reskonwge = reskonwge == null ? null : reskonwge.trim();
    }

    public String getRescourse() {
        return rescourse;
    }

    public void setRescourse(String rescourse) {
        this.rescourse = rescourse == null ? null : rescourse.trim();
    }

    public String getFilesrc() {
        return filesrc;
    }

    public void setFilesrc(String filesrc) {
        this.filesrc = filesrc == null ? null : filesrc.trim();
    }

    public String getFileimgsrc() {
        return fileimgsrc;
    }

    public void setFileimgsrc(String fileimgsrc) {
        this.fileimgsrc = fileimgsrc == null ? null : fileimgsrc.trim();
    }

    public String getUploadauthor() {
        return uploadauthor;
    }

    public void setUploadauthor(String uploadauthor) {
        this.uploadauthor = uploadauthor == null ? null : uploadauthor.trim();
    }

    public Date getUploadtime() {
        return uploadtime;
    }

    public void setUploadtime(Date uploadtime) {
        this.uploadtime = uploadtime;
    }

    public Integer getDownnum() {
        return downnum;
    }

    public void setDownnum(Integer downnum) {
        this.downnum = downnum;
    }
}