package com.lsj.studyweb.controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.lsj.studyweb.model.Article;
import com.lsj.studyweb.model.Course;
import com.lsj.studyweb.model.DbUser;
import com.lsj.studyweb.model.Resources;
import com.lsj.studyweb.model.Userfriend;
import com.lsj.studyweb.service.ArticleService;
import com.lsj.studyweb.service.UserService;
import com.lsj.studyweb.service.UserforumService;
import com.lsj.studyweb.service.UserfriendService;
import com.lsj.studyweb.util.UuidUtil;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userservice;
	@Autowired
	private UserfriendService userfriendservice;
	@Autowired
	private ArticleService articleservice;
	
	/**
	 * 登录
	 * @param user_name
	 * @param user_password
	 * @param httpsession
	 * @return
	 */
	@RequestMapping("/LoginServlet")
	public @ResponseBody String LoginServlet(String user_name,String user_password,HttpSession httpsession){
		DbUser user=userservice.LoginServlet(user_name,user_password);
		if(user!=null){
			//ServletActionContext.getRequest().getSession().setAttribute("sessionUser", user);
			httpsession.setAttribute("sessionUser", user);
			return "1";
			
		}else{
			return "0";
		}

	}
	/**
	 * 注销
	 * @param httpsession
	 * @return
	 */
	@RequestMapping("/etreatUser")
	public String etreatUser(HttpSession httpsession){
		
		//((HttpSession) httpsession.getAttribute("sessionUser")).invalidate();	
		httpsession.invalidate();	
		return "web/layout";
		//return "common/index";
	}
	/**
	 * 注册
	 * @param httpsession
	 * @return
	 */
	@RequestMapping("/RegistServlet")
	public @ResponseBody String RegistServlet(DbUser user,String pass1tex,HttpSession httpsession){
		if(!pass1tex.equals(user.getUserPassword())){
			return "0";
		}else{
			DbUser u = userservice.findbyname(user.getUserName());			
			if(u!=null){
				return "1";
			}else if(u==null){
				boolean mark=userservice.ajaxValidateEmail(user.getUserEmail());
				if(mark){
					return "2";
				}else{	
					user.setRefrenceid(UuidUtil.getUuid());
					user.setUserImgsrc("user_img/1344DB9849FE44B8A663E9E2CAE8BF77_88.jpg");
					userservice.AddUser(user);
					httpsession.setAttribute("sessionUser", user);
					return "200";
				}		
			}
		}
		return null;
		
	}
	/**
	 * 进入个人主页
	 * @return
	 */
	@RequestMapping("/GotoMycenter")
	public ModelAndView GotoMycenter(HttpSession httpsession){
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		Map<String,Object>data=new HashMap<String,Object>();
		//查询我关注的好友
		List<Userfriend>myfri=userfriendservice.FindMyFri(user.getRefrenceid());
		List<Userfriend>myfri1=new ArrayList<Userfriend>();
		int unum=myfri.size();		
		if(unum<6){
			for(int i=0;i<unum;i++)
				myfri1.add(myfri.get(i));
		}else{
			for(int i=0;i<6;i++)
				myfri1.add(myfri.get(i));
		}		
		//查询关注我的好友
		List<DbUser>frimy=userfriendservice.FindFirendMy(user.getRefrenceid());
		List<DbUser>frimy1=new ArrayList<DbUser>();
		int fnum=frimy.size();
		
		if(fnum<6){
			for(int i=0;i<fnum;i++)
				frimy1.add(frimy.get(i));
		}else{
			for(int i=0;i<6;i++)
				frimy1.add(frimy.get(i));
		}		
		List<Article>listart=articleservice.FindArticleByauthor(user.getRefrenceid());
		httpsession.setAttribute("unum",unum);
		data.put("listart",listart);
		
		httpsession.setAttribute("fnum",fnum);
		data.put("myfri1",myfri1);
		data.put("frimy1",frimy1);
		return new ModelAndView("user/mycenter",data);		
	}
	
	
	@RequestMapping("/UploadUserImg")
	public String UploadUserImg(DbUser u,String username,String userphone,String useremail,HttpServletRequest request,HttpServletResponse response,HttpSession httpsession) 
			throws IllegalStateException,IOException{	
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		CommonsMultipartResolver multipartResolver =new CommonsMultipartResolver(request.getSession().getServletContext());
		if(multipartResolver.isMultipart(request)){
			MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
			Iterator<String>iter=multiRequest.getFileNames();
			while(iter.hasNext()){
				int pre=(int)System.currentTimeMillis();
				MultipartFile file=multiRequest.getFile(iter.next());				
				if(file!=null){
					String myFileName=file.getOriginalFilename();
					if(myFileName.trim()!=""){
						Date date=new Date();
						DateFormat format=new SimpleDateFormat("yyyyMMddHHmmss");
						String time=format.format(date);
						String jspname=file.getName();
						if(file.getName().equals("userImg")){							
							String fileName=time+file.getOriginalFilename();
							String path=request.getServletContext().getRealPath("/user_img") + "//"+fileName;
							user.setUserImgsrc("user_img/"+fileName);
							File localFile=new File(path);
							file.transferTo(localFile);
						}												
					}
				}
			}
			
		}
			user.setUserTruename(username);
			user.setUserTel(userphone);
			user.setUserEmail(useremail);
			int count=userservice.updateByPrimaryKey(user);										
			return "user/userinfo";

}
}
