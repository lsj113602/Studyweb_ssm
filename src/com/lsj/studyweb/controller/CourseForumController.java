package com.lsj.studyweb.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.lsj.studyweb.model.Courseforum;
import com.lsj.studyweb.model.DbUser;
import com.lsj.studyweb.model.Userforum;
import com.lsj.studyweb.service.CourseForumService;
import com.lsj.studyweb.service.UserService;
import com.lsj.studyweb.service.UserforumService;
import com.lsj.studyweb.util.UuidUtil;

@Controller
@RequestMapping("/courseforum")
public class CourseForumController {
	@Autowired
	private CourseForumService courseforumservice;
	@Autowired
	private UserforumService userforumservice;
	@Autowired
	private UserService userservice;
	
	@RequestMapping("/AjaxAddForcount")
	public @ResponseBody String AjaxAddForcount(String iid,HttpSession httpsession) {
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		Gson gson =new Gson();		
		int []a=new int[2];
		if(user==null){
			
			a[0]=1;
			String str = gson.toJson(a);
			return str;
		}else{
			Userforum uf=userforumservice.FindUsFor(user.getRefrenceid(),iid);
			if(uf==null){
				a[0]=200;
				
	            //////////////帮作者加积分+2
				Courseforum cf=courseforumservice.selectByPrimaryKey(iid);
				DbUser u3=userservice.findbyname(cf.getUser().getUserName());
				u3.setUserPoints(u3.getUserPoints()+2);
				userservice.updateByPrimaryKey(u3);
				////////////////////////////
				Userforum uf2=new Userforum();
				uf2.setRefrenceid(UuidUtil.getUuid());
				uf2.setCfId(iid);
				uf2.setUserId(user.getRefrenceid());
				userforumservice.insert(uf2);
				
				int num=userforumservice.FindUserForu(iid);
				a[1]=num;
				String str = gson.toJson(a);
				//System.out.println(str);
				return str;
			}else{
				
	                //////////////帮作者加积分-2
				Courseforum cf=courseforumservice.selectByPrimaryKey(iid);
				DbUser u4=userservice.findbyname(cf.getUser().getUserName());
				u4.setUserPoints(u4.getUserPoints()-2);
				userservice.updateByPrimaryKey(u4);
					////////////////////////////
				
				userforumservice.deleteByPrimaryKey(uf.getRefrenceid());
				int num=userforumservice.FindUserForu(iid);
				a[1]=num;
				String str = gson.toJson(a);
				return str;
			}
		}
	}
	@RequestMapping("/AjaxAddForum")
	public @ResponseBody String AjaxAddForum(String ccomment,String vvid,HttpSession httpsession){
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		Courseforum forum=new Courseforum();
		forum.setCfTime(new Date());	
		forum.setCfContext(ccomment);
		forum.setCfCourse(vvid);	
		if(user==null){
			return "1";
		}else{
		//user u=us.findbyname(name);
		forum.setUser(user);
		forum.setCfUserid(user.getRefrenceid());
		forum.setRefrenceid(UuidUtil.getUuid());
		/*
		 * 添加讨论帖
		 */
		courseforumservice.insert(forum);
		
        //////////////帮作者加积分+2
		/*DbUser u1=userservice.findbyname(user.getUser_name());
		u1.setUser_points(u1.getUser_points()+2);
		us.UpdatePoints(u1);*/
		int points=user.getUserPoints()+2;
		user.setUserPoints(points);
		userservice.updateByPrimaryKey(user);
		////////////////////////////
		
		return "200";
	}
	
	}


}
