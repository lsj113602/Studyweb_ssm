package com.lsj.studyweb.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lsj.studyweb.model.Course;
import com.lsj.studyweb.model.DbUser;
import com.lsj.studyweb.model.ExamScore;
import com.lsj.studyweb.model.Mycourse;
import com.lsj.studyweb.service.CourseService;
import com.lsj.studyweb.service.ExamService;
import com.lsj.studyweb.service.MycourseService;
import com.lsj.studyweb.util.UuidUtil;


@Controller
@RequestMapping("/exam")
public class ExamController {
	@Autowired
	private ExamService examservice;
	@Autowired
	private CourseService courseservice;
	@Autowired
	private MycourseService mycourseservice;
	/**
	 * 从视频播放界面进入考试界面
	 * @param ccname
	 * @param httpsession
	 * @return
	 */
	@RequestMapping("/GotoExam")
	public ModelAndView GotoExam(String ccname,HttpSession httpsession){		
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		Map<String,Object>data=new HashMap<String,Object>();
			Course c=courseservice.FindCourseByname(ccname);			
			data.put("c",c);			
			int counum=courseservice.FindbyNum(c.getRefrenceid());			
			data.put("counum",counum);			
			if(user!=null){
				Mycourse mark=mycourseservice.FindMyCou(user.getRefrenceid(),c.getRefrenceid());				
				data.put("mark",mark);
			}else{
				data.put("mark",null);
				}
			return new ModelAndView("SubTest/SubList",data);
	}
	
	/**
	 * 提交考试
	 * @throws IOException
	 */
	@RequestMapping("/AjaxSubmitexam")
	public @ResponseBody String AjaxSubmitexam(String aarrs,String ssubids,String ccname,String nnum,HttpSession httpsession){
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		Map<String,Object>data=new HashMap<String,Object>();
		String arrs=aarrs;
		String []anslist=arrs.split(",");
		List<String>anslists=new ArrayList<String>();
		Collections.addAll(anslists, anslist);
		
		String subids=ssubids;		
		String []subidlist=subids.split(",");
		List<String>subidlists=new ArrayList<String>();
		Collections.addAll(subidlists, subidlist);
		if(user==null){
			return "0";
		}else{
			
			data.put("answerlist", anslist);
			
			data.put("subIdlist", subidlist);
			
			int total = examservice.chakanResult(subidlists,anslists,user.getRefrenceid());
				ExamScore exams=new ExamScore();
				exams.setExamXueke(ccname);
				exams.setUserId(user.getRefrenceid());
				exams.setExamZhishidian(nnum);
			if(total>=90){
				exams.setExamGrade("优秀");
			   }else if(total>=80){
				   exams.setExamGrade("良好");   
			   }else if(total>=70){
				   exams.setExamGrade("中等");   
			   }else if(total>=60){
				   exams.setExamGrade("及格");   
			   }else{
				   exams.setExamGrade("不及格");   
			   }
			exams.setExamScore(Integer.toString(total));
			exams.setExamTime(new Date());
			exams.setRefrenceid(UuidUtil.getUuid());
			examservice.insert(exams);
			return Integer.toString(total);
		}
		
		
		
	}
	
	

}
