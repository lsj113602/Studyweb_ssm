package com.lsj.studyweb.controller;


import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lsj.studyweb.model.DbUser;
import com.lsj.studyweb.model.Plan;
import com.lsj.studyweb.service.PlanService;
import com.lsj.studyweb.util.UuidUtil;


@Controller
@RequestMapping("/plan")
public class PlanController {
	@Autowired
	private PlanService planservice;
	@RequestMapping("FindplanByall")
	public ModelAndView FindplanByall(HttpSession httpsession){
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		Map<String,Object>data=new HashMap<String,Object>();		
			List<Plan>list=planservice.FindplanByUid(user.getRefrenceid());
			data.put("list", list);
		return new ModelAndView("user/myplan",data);	
	}
	
	@RequestMapping(value="AjaxFindAllplan",produces = {"application/json;charset=UTF-8"})
	public @ResponseBody String AjaxFindAllplan(HttpSession httpsession){
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser"); 
		String str=planservice.AjaxFindAllplan(user.getRefrenceid());
		return str;

	}
	@RequestMapping("/AddPlan")
	public String AddPlan(Plan plan,HttpSession httpsession){
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");	
		plan.setUserId(user.getRefrenceid());
		plan.setRefrenceid(UuidUtil.getUuid());
		planservice.insert(plan);		
		return "user/mycenter";	
	}
	@RequestMapping("/AddPlan1")
	public ModelAndView AddPlan1(String plantext,String blongid,String starttime,String endtime,HttpSession httpsession){
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");	
		Map<String,Object>data=new HashMap<String,Object>();		
		Plan plan=new Plan();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");		
		try {
			plan.setEndtime(sdf.parse(endtime));
			plan.setStarttime(sdf.parse(starttime));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		plan.setBlongid(blongid);
		plan.setPlantext(plantext);
		plan.setUserId(user.getRefrenceid());
		plan.setRefrenceid(UuidUtil.getUuid());
		plan.setProgress(0);
		planservice.insert(plan);	
		List<Plan>list=planservice.FindplanByUid(user.getRefrenceid());
		data.put("list", list);
		return new ModelAndView("user/myplan",data);	
	}

}
