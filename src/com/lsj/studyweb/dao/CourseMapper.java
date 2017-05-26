package com.lsj.studyweb.dao;

import java.util.List;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.Course;
import com.lsj.studyweb.model.Mycourse;
import com.lsj.studyweb.util.MyBatisDao;
//@MyBatisDao
public interface CourseMapper extends BasicDao<Course>{

	public Course FindCourseByname(String coursename);

	public List<Course> selectAll();

	public List<Course> FindCourseByField(String field);


    
}