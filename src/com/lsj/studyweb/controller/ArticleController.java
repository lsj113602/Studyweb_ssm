package com.lsj.studyweb.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lsj.studyweb.model.Article;
import com.lsj.studyweb.model.Course;
import com.lsj.studyweb.model.DbUser;
import com.lsj.studyweb.model.Mycourse;
import com.lsj.studyweb.model.Video;
import com.lsj.studyweb.service.ArticleService;
import com.lsj.studyweb.service.CourseService;
import com.lsj.studyweb.service.MycourseService;
import com.lsj.studyweb.service.VideoService;


@Controller
@RequestMapping("/article")
public class ArticleController {
	@Autowired
	private ArticleService articleservice;
	@Autowired
	private CourseService courseservice;
	@Autowired
	private MycourseService mycourseservice;
	@Autowired
	private VideoService videoservice;

	
	@RequestMapping("/FindArticleBycname")
	public ModelAndView FindArticleBycname(String cname,HttpSession httpsession){
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		Map<String,Object>data=new HashMap<String,Object>();				
		Course c=courseservice.FindCourseByname(cname);
		data.put("c", c);		
		if(user!=null){
			Mycourse mark=mycourseservice.FindMyCou(user.getRefrenceid(),c.getRefrenceid());
			data.put("mark", mark);
		}else{data.put("mark", null);}		
		int counum=courseservice.FindbyNum(c.getRefrenceid());
		data.put("counum", counum);
		//新增
		List<Article>listart=articleservice.FindArticleBycname(cname);
		data.put("listart", listart);		
		List<Video>vidhot=videoservice.FindByhot();
		data.put("vidhot", vidhot);
		
		List<Video>listvid=videoservice.FindByNaDesc(cname);
		data.put("listvid", listvid);
		data.put("cname", cname);
		return new ModelAndView("article/upfile",data);
	}
	
	@RequestMapping("/gotoUpArticle")
	public ModelAndView gotoUpArticle(String cname){
			Map<String,Object>data=new HashMap<String,Object>();		
			List<Course>list=courseservice.selectAll();
			data.put("list", list);
			data.put("cname", cname);
		return new ModelAndView("article/editor",data);		
	}
	
	@RequestMapping("/FindArticle")
	public ModelAndView FindArticle(String cname,HttpSession httpsession){
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		Map<String,Object>data=new HashMap<String,Object>();				
		Course c=courseservice.FindCourseByname(cname);
		data.put("c", c);		
		List<Article>listart=articleservice.FindArticleBycname(cname);
		data.put("listart", listart);		
		int counum=courseservice.FindbyNum(c.getRefrenceid());
		data.put("counum", counum);
		
		List<Video>vidhot=videoservice.FindByhot();
		data.put("vidhot", vidhot);
		
		List<Video>listvid=videoservice.FindByNaDesc(cname);
		data.put("listvid", listvid);
		data.put("cname", cname);
		if(user!=null){
			Mycourse mark=mycourseservice.FindMyCou(user.getRefrenceid(),c.getRefrenceid());
			data.put("mark", mark);
		}else{data.put("mark", null);}
		return new ModelAndView("article/upfile",data);	
	}

}


