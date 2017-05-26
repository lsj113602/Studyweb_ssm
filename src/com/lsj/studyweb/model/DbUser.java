package com.lsj.studyweb.model;

import java.util.Date;

public class DbUser {
    private String refrenceid;

    private String userName;

    private String userPassword;

    private String userTruename;

    private String userEmail;

    private Boolean userStatus;

    private String userActivationcode;

    private String userIdcard;

    private String userTel;

    private String userQq;

    private String userSetbacks;

    private String uuserWay;

    private String userClass;

    private Integer userPoints;

    private Date userData;

    private String userJob;

    private String userLevel;

    private String userImgsrc;

    private Integer mark;

    public String getRefrenceid() {
        return refrenceid;
    }

    public void setRefrenceid(String refrenceid) {
        this.refrenceid = refrenceid == null ? null : refrenceid.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword == null ? null : userPassword.trim();
    }

    public String getUserTruename() {
        return userTruename;
    }

    public void setUserTruename(String userTruename) {
        this.userTruename = userTruename == null ? null : userTruename.trim();
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail == null ? null : userEmail.trim();
    }

    public Boolean getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(Boolean userStatus) {
        this.userStatus = userStatus;
    }

    public String getUserActivationcode() {
        return userActivationcode;
    }

    public void setUserActivationcode(String userActivationcode) {
        this.userActivationcode = userActivationcode == null ? null : userActivationcode.trim();
    }

    public String getUserIdcard() {
        return userIdcard;
    }

    public void setUserIdcard(String userIdcard) {
        this.userIdcard = userIdcard == null ? null : userIdcard.trim();
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel == null ? null : userTel.trim();
    }

    public String getUserQq() {
        return userQq;
    }

    public void setUserQq(String userQq) {
        this.userQq = userQq == null ? null : userQq.trim();
    }

    public String getUserSetbacks() {
        return userSetbacks;
    }

    public void setUserSetbacks(String userSetbacks) {
        this.userSetbacks = userSetbacks == null ? null : userSetbacks.trim();
    }

    public String getUuserWay() {
        return uuserWay;
    }

    public void setUuserWay(String uuserWay) {
        this.uuserWay = uuserWay == null ? null : uuserWay.trim();
    }

    public String getUserClass() {
        return userClass;
    }

    public void setUserClass(String userClass) {
        this.userClass = userClass == null ? null : userClass.trim();
    }

    public Integer getUserPoints() {
        return userPoints;
    }

    public void setUserPoints(Integer userPoints) {
        this.userPoints = userPoints;
    }

    public Date getUserData() {
        return userData;
    }

    public void setUserData(Date userData) {
        this.userData = userData;
    }

    public String getUserJob() {
        return userJob;
    }

    public void setUserJob(String userJob) {
        this.userJob = userJob == null ? null : userJob.trim();
    }

    public String getUserLevel() {
        return userLevel;
    }

    public void setUserLevel(String userLevel) {
        this.userLevel = userLevel == null ? null : userLevel.trim();
    }

    public String getUserImgsrc() {
        return userImgsrc;
    }

    public void setUserImgsrc(String userImgsrc) {
        this.userImgsrc = userImgsrc == null ? null : userImgsrc.trim();
    }

    public Integer getMark() {
        return mark;
    }

    public void setMark(Integer mark) {
        this.mark = mark;
    }
}