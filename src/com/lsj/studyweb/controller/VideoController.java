package com.lsj.studyweb.controller;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.lsj.studyweb.model.Course;
import com.lsj.studyweb.model.Courseforum;
import com.lsj.studyweb.model.DbUser;
import com.lsj.studyweb.model.Fullcalendar;
import com.lsj.studyweb.model.Resources;
import com.lsj.studyweb.model.Video;
import com.lsj.studyweb.service.CourseForumService;
import com.lsj.studyweb.service.CourseService;
import com.lsj.studyweb.service.FullcalendarService;
import com.lsj.studyweb.service.UserService;
import com.lsj.studyweb.service.UsercontachService;
import com.lsj.studyweb.service.VideoService;
import com.lsj.studyweb.util.UuidUtil;

@Controller
@RequestMapping("/video")
public class VideoController {
	@Autowired
	private VideoService videoservice;
	@Autowired
	private FullcalendarService fullcalendarservice;
	@Autowired
	private UsercontachService usercontachservice;
	@Autowired
	private UserService userservice; 
	@Autowired
	private CourseService courseservice;
	@Autowired
	private CourseForumService courseForumService;
	
	/*
	 * 从地图进入
	 */
	@RequestMapping("/playvideo")
	public ModelAndView playvideo(String videoUpwriter,String videoName,HttpSession httpsession){
		Map<String,Object>data=new HashMap<String,Object>();
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
			String author=videoUpwriter;
			String videoname = videoName;
			Video vid=null;
			if(user==null){
				vid=videoservice.FindByVidNA(videoname,author);				
			}else{
				vid=videoservice.FindByVidNA1(videoname,author,user.getRefrenceid());
				/*记录用户的访问次数*/
				usercontachservice.AddUserContach(user.getRefrenceid(),vid.getRefrenceid());
			}
			
			//记录到日程表
			if(user!=null){
				Fullcalendar fullcalendar=new Fullcalendar();
				fullcalendar.setStarttime(new Date());
				fullcalendar.setUserId(user.getRefrenceid());
				fullcalendar.setVid(vid.getRefrenceid());
				fullcalendar.setVideo(vid);
				fullcalendar.setRefrenceid(UuidUtil.getUuid());
				fullcalendarservice.insert(fullcalendar);
			    data.put("fcd",fullcalendar);			
			}
			//按视频热度推荐视频
			List<Video>vidhot=videoservice.FindByhot();
			data.put("vidhot",vidhot);
			//按作排序推荐视频
			List<Video> vids = videoservice.FindByWriter5(author);
			//按知识点排序推荐视频
			List<Video> vidkname = videoservice.FindByKnow(vid.getZhishidianid());
			
			data.put("vids",vids);
			data.put("vid",vid);
			data.put("vidkname",vidkname);
		return new ModelAndView("web/videolist",data);	
	}
	
	/*
	 * 从其他地方进入
	 */
	@RequestMapping("/playvideo2")
	public ModelAndView playvideo2(String vidid,HttpSession httpsession){
		Map<String,Object>data=new HashMap<String,Object>();
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");

			/*记录用户的访问次数*/
			if(user!=null){
				usercontachservice.AddUserContach(user.getRefrenceid(),vidid);
			}
			
			//获取该视频
			Video vid=videoservice.selectByPrimaryKey(vidid);
			
			List<Courseforum>courseforums=courseForumService.findByvid(vid.getRefrenceid());
			vid.setStadynum(vid.getStadynum()+1);
			vid.setCourseforums(courseforums);
			videoservice.updateByPrimaryKey(vid);
			//////////////帮作者加积分+2
			DbUser u=userservice.findbyname(vid.getVideoupwriter());
			u.setUserPoints(u.getUserPoints()+2);
			userservice.updateByPrimaryKey(u);
			////////////////////////////加分结束
			
			//记录到日程表
			if(user!=null){
				Fullcalendar fcd=new Fullcalendar();
				fcd.setStarttime(new Date());
				fcd.setUserId(user.getRefrenceid());
				fcd.setVid(vid.getRefrenceid());
				fcd.setVideo(vid);
			//fs.addfull(fcd);
				data.put("fcd",fcd);
			
			}
			//System.out.println(vid.getVideoUpwriter());
			//开始列表下面的推荐
			List<Video> vids = videoservice.FindByWriter5(vid.getVideoupwriter());
			List<Video> vidkname = videoservice.FindByKnow(vid.getZhishidianid());			
			List<Video>vidhot=videoservice.FindByhot();
			data.put("vidhot", vidhot);
			data.put("vids",vids);
			data.put("vid",vid);
			data.put("vidkname",vidkname);
			return new ModelAndView("web/videolist",data);	
		//req.getRequestDispatcher("/newjsps/web/videolist.jsp").forward(req, resp);		
		
	}
	@RequestMapping("gotoUpVideo")
	public ModelAndView gotoUpVideo(String cname){
		Map<String,Object>data=new HashMap<String,Object>();	
			List<Course>list=courseservice.selectAll();
			data.put("list", list);
			data.put("cname", cname);
		return new ModelAndView("article/upvideo",data);	
		
	}
	
	@RequestMapping("/UploadVideo")
	public ModelAndView UploadVideo(Video video,HttpServletRequest request,HttpServletResponse response,HttpSession httpsession) 
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
						if(file.getName().equals("videosrc")){							
							String fileName=time+file.getOriginalFilename();
							String path=request.getServletContext().getRealPath("/video") + "//"+fileName;
							video.setVideosrc("video/"+fileName);
							File localFile=new File(path);
							file.transferTo(localFile);
						}else{
							String fileName=time+file.getOriginalFilename();
							String path=request.getServletContext().getRealPath("/video_image") + "//"+fileName;
							video.setVideoimgsrc("video_image/"+fileName);
							File localFile=new File(path);
							file.transferTo(localFile);
						}												
					}
				}
			}			
		}	
			Date date1= new Date();
			video.setVideouptime(date1);
			if(user!=null){
			video.setVideoupwriter(user.getUserName());
			}
			video.setRefrenceid(UuidUtil.getUuid());
			video.setStadynum(0);		
			int count=videoservice.insert(video);							
			List<Course>list = courseservice.selectAll();
			Map<String,Object>data=new HashMap<String,Object>();				
			data.put("list", list);
			data.put("cname",video.getXueke());			
			return new ModelAndView("article/upvideo",data);
		}
	
	@RequestMapping("/UploadVideo1")
	public ModelAndView UploadVideo1(String videoname,String zhishidianid,String videotext,String videointegral,String xueke,HttpServletRequest request,HttpServletResponse response,HttpSession httpsession) 
			throws IllegalStateException,IOException{	
		Video video=new Video();
		video.setVideoname(videoname);
		video.setZhishidianid(zhishidianid);
		video.setVideotext(videotext);
		video.setVideointegral(videointegral);
		video.setXueke(xueke);
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
						if(file.getName().equals("videosrc")){							
							String fileName=time+file.getOriginalFilename();
							String path=request.getServletContext().getRealPath("/video") + "//"+fileName;
							video.setVideosrc("video/"+fileName);
							File localFile=new File(path);
							file.transferTo(localFile);
						}else{
							String fileName=time+file.getOriginalFilename();
							String path=request.getServletContext().getRealPath("/video_image") + "//"+fileName;
							video.setVideoimgsrc("video_image/"+fileName);
							File localFile=new File(path);
							file.transferTo(localFile);
						}												
					}
				}
			}			
		}	
			Date date1= new Date();
			video.setVideouptime(date1);
			if(user!=null){
			video.setVideoupwriter(user.getUserName());
			}
			video.setRefrenceid(UuidUtil.getUuid());
			video.setStadynum(0);		
			int count=videoservice.insert(video);							
			List<Course>list = courseservice.selectAll();
			Map<String,Object>data=new HashMap<String,Object>();				
			data.put("list", list);
			data.put("cname",video.getXueke());			
			return new ModelAndView("article/upvideo",data);
		}

}
