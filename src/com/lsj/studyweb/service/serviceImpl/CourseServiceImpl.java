package com.lsj.studyweb.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.CourseMapper;
import com.lsj.studyweb.dao.MycourseMapper;
import com.lsj.studyweb.model.Course;
import com.lsj.studyweb.model.Mycourse;
import com.lsj.studyweb.service.CourseService;
@Service("CourseService")
public class CourseServiceImpl extends BasicServiceImpl<Course> implements CourseService{
	@Autowired
	private CourseMapper coursemapper;
	
	@Autowired
	private MycourseMapper mycoursemapper;
	
	public Course FindCourseByname(String coursename){
		Course c=coursemapper.FindCourseByname(coursename);
		return c;
	}
	public int FindbyNum(String refrenceid){
		List<Mycourse>listmycou=mycoursemapper.FindbyNum(refrenceid);
		return listmycou.size();
	}
	//根据用户和课程查询是否关注该课程
	public Mycourse FindMyCou(String refrenceid, String refrenceid2){
		Mycourse mycourse=new Mycourse();
		mycourse.setCourseid(refrenceid2);
		mycourse.setUserId(refrenceid);
		return mycoursemapper.FindMyCou(mycourse);
	}
	
	public List<Course> selectAll(){
		return coursemapper.selectAll();
	}
	
	public List<Course> FindCourseByField(String field){
		return coursemapper.FindCourseByField(field);
	}
}
