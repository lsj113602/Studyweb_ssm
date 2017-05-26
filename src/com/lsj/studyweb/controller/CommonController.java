package com.lsj.studyweb.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lsj.studyweb.model.Course;
import com.lsj.studyweb.model.Resources;
import com.lsj.studyweb.service.CourseService;
import com.lsj.studyweb.service.ResourcesService;


@Controller
@RequestMapping("/common")
public class CommonController {
	@Autowired
	private ResourcesService resourcesservice;
	@Autowired
	private CourseService courseservice;
	@RequestMapping("/index")
	public String index(){
		return "web/index";
	}
	//学习导图
	@RequestMapping("/studyline")
	public String studyline(){
		return "web/Route";
	}
	//GEEK社区
	@RequestMapping("/geek")
	public String geek(){
		return "community/CommunityList";
	}
	//资源共享
	@RequestMapping("/ResourcesList")
	public String ResourcesList(){
		return "resources/ResourcesList";
	}
	//资源测试
	@RequestMapping("/SubTestList")
	public String SubTestList(){
		return "SubTest/SubTestList";
	}
	
	//进入地图学习界面
	@RequestMapping("/gotoMap")
	public String gotoMap(){
		return "map/map";
	}
	
	//进入资源上传界面
	@RequestMapping("/gotojsp")
	public ModelAndView gotojsp(String coursename){
		Map<String,Object>data=new HashMap<String,Object>();
		List<Course>list=courseservice.selectAll();
		data.put("list", list);
		data.put("cname", coursename);
		return new ModelAndView("resources/UpResources",data);
	}
	
	//文件下载
	@RequestMapping("/Filedownload")
	public ResponseEntity<byte[]> Filedownload(String filename,HttpServletRequest request) throws IOException{
		String path=request.getServletContext().getRealPath("");
		//String realPath = ServletActionContext.getRequest().getSession().getServletContext().getRealPath("/");
		File file=new File(path+"/"+filename);
		String downname=file.getName();
		
		
		String dfileName =downname;
		
		Resources res=resourcesservice.FindResourcesBysrc(filename);
		res.setDownnum(res.getDownnum()+1);
		resourcesservice.updateByPrimaryKeySelective(res);
//      下面开始设置HttpHeaders,使得浏览器响应下载
         HttpHeaders headers = new HttpHeaders();
//      设置响应方式
        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
//      设置响应文件
        headers.setContentDispositionFormData("attachment", dfileName);
//      把文件以二进制形式写回
        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers, HttpStatus.CREATED);
		
	/*	try {
			FileInputStream fileInputStream=new FileInputStream(file);
			
         } catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/

	}
	
	//java学习导图
	@RequestMapping("/javacoursetree")
	public String javacoursetree(){
			return "course/coursetree";
		}
	
	//java自适应学习导图
	@RequestMapping("/javaadaptiontree")
	public String javaadaptiontree(){
			return "course/adaptiontree";
			}
	
	//进入个人设置界面
	@RequestMapping("/gotouserinfo")
	public String gotouserinfo(){
			return "user/userinfo";
			}
	//进入个人课程界面
	@RequestMapping("/gotouserCourse")
	public String gotouserCourse(){
			return "user/userCourse";
			}
	//进入个人考试记录界面
	@RequestMapping("/gotomyscores")
	public String gotomyscores(){
			return "user/myscores";
			}
	//返回脚界面
	@RequestMapping("/returnfooter")
	public String returnfooter(){
			return "top/Top2";
			}
	


}
