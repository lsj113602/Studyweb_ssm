package com.lsj.studyweb.model;

import java.util.Date;

public class ExamScore {
    private String refrenceid;

    private String userId;

    private Date examTime;

    private String examScore;

    private String examGrade;

    private String examZhishidian;

    private String examXueke;

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

    public Date getExamTime() {
        return examTime;
    }

    public void setExamTime(Date examTime) {
        this.examTime = examTime;
    }

    public String getExamScore() {
        return examScore;
    }

    public void setExamScore(String examScore) {
        this.examScore = examScore == null ? null : examScore.trim();
    }

    public String getExamGrade() {
        return examGrade;
    }

    public void setExamGrade(String examGrade) {
        this.examGrade = examGrade == null ? null : examGrade.trim();
    }

    public String getExamZhishidian() {
        return examZhishidian;
    }

    public void setExamZhishidian(String examZhishidian) {
        this.examZhishidian = examZhishidian == null ? null : examZhishidian.trim();
    }

    public String getExamXueke() {
        return examXueke;
    }

    public void setExamXueke(String examXueke) {
        this.examXueke = examXueke == null ? null : examXueke.trim();
    }
}