package com.lsj.studyweb.dao;

import java.util.List;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.Courseforum;

public interface CourseforumMapper extends BasicDao<Courseforum>{

	List<Courseforum> FindcourseforumByVideoid(String refrenceid);
   
}