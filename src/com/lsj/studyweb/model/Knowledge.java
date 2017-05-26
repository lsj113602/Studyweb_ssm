package com.lsj.studyweb.model;

public class Knowledge {
    private String refrenceid;

    private String knowledgename;

    private String upknowledge;

    private String nextknowledge;

    private Integer incourseid;

    private Integer knowledgeweight;

    private String knowledgelevel;

    private String knowledgeintroduce;

    private String knowledgeimgsrc;

    public String getRefrenceid() {
        return refrenceid;
    }

    public void setRefrenceid(String refrenceid) {
        this.refrenceid = refrenceid == null ? null : refrenceid.trim();
    }

    public String getKnowledgename() {
        return knowledgename;
    }

    public void setKnowledgename(String knowledgename) {
        this.knowledgename = knowledgename == null ? null : knowledgename.trim();
    }

    public String getUpknowledge() {
        return upknowledge;
    }

    public void setUpknowledge(String upknowledge) {
        this.upknowledge = upknowledge == null ? null : upknowledge.trim();
    }

    public String getNextknowledge() {
        return nextknowledge;
    }

    public void setNextknowledge(String nextknowledge) {
        this.nextknowledge = nextknowledge == null ? null : nextknowledge.trim();
    }

    public Integer getIncourseid() {
        return incourseid;
    }

    public void setIncourseid(Integer incourseid) {
        this.incourseid = incourseid;
    }

    public Integer getKnowledgeweight() {
        return knowledgeweight;
    }

    public void setKnowledgeweight(Integer knowledgeweight) {
        this.knowledgeweight = knowledgeweight;
    }

    public String getKnowledgelevel() {
        return knowledgelevel;
    }

    public void setKnowledgelevel(String knowledgelevel) {
        this.knowledgelevel = knowledgelevel == null ? null : knowledgelevel.trim();
    }

    public String getKnowledgeintroduce() {
        return knowledgeintroduce;
    }

    public void setKnowledgeintroduce(String knowledgeintroduce) {
        this.knowledgeintroduce = knowledgeintroduce == null ? null : knowledgeintroduce.trim();
    }

    public String getKnowledgeimgsrc() {
        return knowledgeimgsrc;
    }

    public void setKnowledgeimgsrc(String knowledgeimgsrc) {
        this.knowledgeimgsrc = knowledgeimgsrc == null ? null : knowledgeimgsrc.trim();
    }
}