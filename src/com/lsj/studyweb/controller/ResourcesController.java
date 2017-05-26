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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import com.lsj.studyweb.model.Course;
import com.lsj.studyweb.model.DbUser;
import com.lsj.studyweb.model.Resources;
import com.lsj.studyweb.service.CourseService;
import com.lsj.studyweb.service.ResourcesService;
import com.lsj.studyweb.util.UuidUtil;


@Controller
@RequestMapping("/resources")
public class ResourcesController {
	@Autowired
	private ResourcesService resourcesservice;
	@Autowired
	private CourseService courseservice;
	
	@RequestMapping("/UploadResources")
	public ModelAndView UploadResources(Resources resources,HttpServletRequest request,HttpServletResponse response,HttpSession httpsession) 
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
						if(file.getName().equals("upload")){							
							String fileName=time+file.getOriginalFilename();
							String path=request.getServletContext().getRealPath("/resources") + "//"+fileName;
							resources.setFilesrc("resources/"+fileName);
							File localFile=new File(path);
							file.transferTo(localFile);
						}else{
							String fileName=time+file.getOriginalFilename();
							String path=request.getServletContext().getRealPath("/resourcesimg") + "//"+fileName;
							resources.setFileimgsrc("resourcesimg/"+fileName);
							File localFile=new File(path);
							file.transferTo(localFile);
						}												
					}
				}
				//获取上传成功的时间
				//int finaltime=(int)System.currentTimeMillis();
				//System.out.println(finaltime-pre);
			}
			
		}
		if(resources.getFileimgsrc()==""||resources.getFileimgsrc()==null){
			if(resources.getRescategory().equals("文档")){
				resources.setFileimgsrc("resourcesimg/wendang.png");
			}else if(resources.getRescategory().equals("代码")){
				resources.setFileimgsrc("resourcesimg/ya.png");
			}else{
				resources.setFileimgsrc("resourcesimg/gongju.jpg");
			}
		}	
			Date date1= new Date();
			resources.setUploadtime(date1);
			if(user!=null){
			String name=user.getUserName();
			resources.setUploadauthor(name);
			}
			resources.setRefrenceid(UuidUtil.getUuid());
			resources.setDownnum(0);		
			int count=resourcesservice.insert(resources);							
			List<Course>list = courseservice.selectAll();
			Map<String,Object>data=new HashMap<String,Object>();	
			
			data.put("list", list);
			data.put("cname",resources.getRescourse());			
			return new ModelAndView("resources/UpResources",data);
		}
	

}
