package com.lsj.studyweb.model;

public class Course {
    private String refrenceid;

    private String coursename;

    private String courselevel;

    private String coursefield;

    private String courseintroduce;

    private String coursesrc;

    private Integer number;

    public String getRefrenceid() {
        return refrenceid;
    }

    public void setRefrenceid(String refrenceid) {
        this.refrenceid = refrenceid == null ? null : refrenceid.trim();
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename == null ? null : coursename.trim();
    }

    public String getCourselevel() {
        return courselevel;
    }

    public void setCourselevel(String courselevel) {
        this.courselevel = courselevel == null ? null : courselevel.trim();
    }

    public String getCoursefield() {
        return coursefield;
    }

    public void setCoursefield(String coursefield) {
        this.coursefield = coursefield == null ? null : coursefield.trim();
    }

    public String getCourseintroduce() {
        return courseintroduce;
    }

    public void setCourseintroduce(String courseintroduce) {
        this.courseintroduce = courseintroduce == null ? null : courseintroduce.trim();
    }

    public String getCoursesrc() {
        return coursesrc;
    }

    public void setCoursesrc(String coursesrc) {
        this.coursesrc = coursesrc == null ? null : coursesrc.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }
}