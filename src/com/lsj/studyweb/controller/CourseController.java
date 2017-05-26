package com.lsj.studyweb.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.lsj.studyweb.model.Course;
import com.lsj.studyweb.model.DbUser;
import com.lsj.studyweb.model.Mycourse;
import com.lsj.studyweb.model.Question;
import com.lsj.studyweb.model.Resources;
import com.lsj.studyweb.model.Video;
import com.lsj.studyweb.service.CourseService;
import com.lsj.studyweb.service.MycourseService;
import com.lsj.studyweb.service.QuestionService;
import com.lsj.studyweb.service.ResourcesService;
import com.lsj.studyweb.service.UserService;
import com.lsj.studyweb.service.VideoService;
import com.lsj.studyweb.util.UuidUtil;



@Controller
@RequestMapping("/course")
public class CourseController {
	
	@Autowired
	private CourseService courseservice;
	@Autowired
	private QuestionService questionservice;
	@Autowired
	private VideoService videoservice;
	@Autowired
	private ResourcesService resourcesservic;
	@Autowired
	private MycourseService mycourseservice;
	@Autowired
	private UserService userservice;
	
	@RequestMapping("/FindCourseByname")
	public ModelAndView FindCourseByname(String coursename,HttpSession httpsession){
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		Map<String,Object>data=new HashMap<String,Object>();
		Course course=courseservice.FindCourseByname(coursename);
		//该课程的讨论问题
		List<Question>listque=questionservice.FindQueBytag(coursename);
		//httpsession.setAttribute("c", course);
		//httpsession.setAttribute("listqust", listque);
		data.put("c", course);
		data.put("listqust", listque);
		//查看课程的学习人数
		int counum=courseservice.FindbyNum(course.getRefrenceid());
		data.put("counum", counum);
		//查看课程的视频，按热度排序
		List<Video>listvid=videoservice.FindByNaDesc(coursename);
		data.put("listvid", listvid);
		
		//课程资源(WORD,工具,源码：只查找了下载量前3个)
		List<Resources>wordres=resourcesservic.FindWordResources(coursename);
		List<Resources>coderes=resourcesservic.FindCodeResources(coursename);
		List<Resources>toolres=resourcesservic.FindToolResources(coursename);
		//传递资源
		data.put("wordres", wordres);
		data.put("coderes", coderes);
		data.put("toolres", toolres);
		
		if(user!=null){
			Mycourse mark=mycourseservice.FindMyCou(user.getRefrenceid(),course.getRefrenceid());
			data.put("mark", mark);

		}else{
			data.put("mark", null);
		}
		
		////////////////////////算法推荐好友模块
		if(user!=null){
			//List<user>listuser=ucs.FindUser(u);
			
			List<DbUser>users=userservice.FindUserBypoints(user.getRefrenceid());
			data.put("users", users);
			//req.setAttribute("users", users);
		}else{
			List<DbUser>users=userservice.FindBypoints();
			data.put("users", users);
			//req.setAttribute("users", users);
		}
		return new ModelAndView("web/language",data);
	}
	
	
	@RequestMapping("/AjaxAddCourse")
	public @ResponseBody String AjaxAddCourse(String refrenceid,HttpSession httpsession){
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		Gson gson =new Gson();
		int []a=new int[2];
		if(user==null){
			a[0]=1;
			String str = gson.toJson(a);
			//System.out.println(str);
			return str;
		}else{	
				Mycourse mycou=courseservice.FindMyCou(user.getRefrenceid(),refrenceid);
				if(mycou==null){
					Mycourse mycourse=new Mycourse();
					mycourse.setUserId(user.getRefrenceid());
					mycourse.setTime(new Date());
					mycourse.setRefrenceid(UuidUtil.getUuid());
					mycourse.setCourseid(refrenceid);
					a[0]=200;
					int count=mycourseservice.insert(mycourse);
					int num=courseservice.FindbyNum(refrenceid);
					a[1]=num;
					String str = gson.toJson(a);
					//System.out.println(str);
					return str;
					
					
				}else{
					a[0]=100;
					int delnum=mycourseservice.deleteByPrimaryKey(mycou.getRefrenceid());
					int num=courseservice.FindbyNum(refrenceid);
					a[1]=num;
					String str = gson.toJson(a);
					//System.out.println(str);
					return str;
				}						
		}

	}
	/**
	 * 根据课程类别查找各个课程热度
	 * @param field
	 * @return
	 */
	
	@RequestMapping("/FindCourseByField")
	public @ResponseBody String FindCourseByField(String field){	
		Gson gs=new Gson();
		List<Course>listcou=courseservice.FindCourseByField(field);
		String str = gs.toJson(listcou);
		return str;

	}
	

}
