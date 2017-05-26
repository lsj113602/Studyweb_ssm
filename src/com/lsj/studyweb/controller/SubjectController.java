package com.lsj.studyweb.controller;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.lsj.studyweb.model.TbSubject;
import com.lsj.studyweb.service.SubjectService;
@Controller
@RequestMapping("subject")
public class SubjectController {
	@Autowired
	private SubjectService subjectservice;
	
	@RequestMapping("FindSubBycou")
	public ModelAndView FindSubBycou(String cname,String num){
		//String ccname=cname;
		Map<String,Object>data=new HashMap<String,Object>();
		int nnum=Integer.parseInt(num);
			List<TbSubject>listsub=subjectservice.FindSubBycou(cname,nnum);
			data.put("listsub",listsub);
			data.put("cname",cname);
			data.put("num",num);
		return new ModelAndView("SubTest/SubjectTest",data);
		
	}

}
