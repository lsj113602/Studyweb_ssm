package com.lsj.studyweb.service;

import java.util.List;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.Course;
import com.lsj.studyweb.model.Mycourse;

public interface CourseService extends BasicService<Course>{

	public Course FindCourseByname(String coursename);

	public int FindbyNum(String refrenceid);

	public Mycourse FindMyCou(String refrenceid, String refrenceid2);

	public List<Course> selectAll();

	public List<Course> FindCourseByField(String field);


}
