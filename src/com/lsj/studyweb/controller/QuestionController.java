package com.lsj.studyweb.controller;

import java.util.Date;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.lsj.studyweb.model.DbUser;
import com.lsj.studyweb.model.Question;
import com.lsj.studyweb.service.QuestionService;
import com.lsj.studyweb.service.UserService;
import com.lsj.studyweb.util.UuidUtil;

@Controller
@RequestMapping("/quest")
public class QuestionController {
	@Autowired
	private QuestionService questionservice;
	@Autowired
	private UserService userservice;
	@RequestMapping("/AddQueAjax")
	public @ResponseBody String AddQueAjax(String ttitle,String ccname,String ttext,HttpSession httpsession){
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		if(user==null){
			return "1";
		}else{
			String title=ttitle;
			if(title==null){
				return "0";
			}else{
				String qutag=ccname;
				Question quest =new Question();
				quest.setQutitle(title);
				quest.setQutag(qutag);
				
				quest.setContent(ttext);	
				quest.setUser(user);
				quest.setUid(user.getRefrenceid());
		
				quest.setQutime(new Date());
				quest.setRefrenceid(UuidUtil.getUuid());
				int intnum=questionservice.insert(quest);
				
				//增加积分
				//DbUser u2=userservice.findbyname(u.getUser_name());
				user.setUserPoints(user.getUserPoints()+2);
				int updatanum=userservice.updateByPrimaryKey(user);
				//增加积分
				return "200";
			}		
	 }
	}
}


