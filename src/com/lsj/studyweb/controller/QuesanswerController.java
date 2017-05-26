package com.lsj.studyweb.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.lsj.studyweb.model.DbUser;
import com.lsj.studyweb.model.Quesanswer;
import com.lsj.studyweb.model.Useranswer;
import com.lsj.studyweb.service.QuesanswerService;
import com.lsj.studyweb.service.UserService;
import com.lsj.studyweb.service.UseranswerService;
import com.lsj.studyweb.util.UuidUtil;

@Controller
@RequestMapping("/quesanswer")
public class QuesanswerController {
	@Autowired
	public QuesanswerService quesanswerservice;
	@Autowired
	public UseranswerService useranswerservice;
	@Autowired
	private UserService userservice;
	
	@RequestMapping("/AddAnsAjax")
	public @ResponseBody String AddAnsAjax(String aanswer,String qquuid,HttpSession httpsession){
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		if(user==null){
			return "1";
		}else{
		String answer=aanswer;
		String quuid=qquuid;
		if(answer==null){
			return "0";
		}else{
		
		Quesanswer ans =new Quesanswer();
		ans.setQatext(answer);
		ans.setUid(user.getRefrenceid());
		ans.setUser(user);
		ans.setQuid(quuid);
		ans.setQatime(new Date());
		ans.setRefrenceid(UuidUtil.getUuid());
		ans.setQasupport(0);
		ans.setQaopposition(0);
		int insnum=quesanswerservice.insert(ans);
		return "200";
		}
		
	 }
  }
	@RequestMapping("/AddUserAns")
	public @ResponseBody String AddUserAns(String ttag,String qqaid,String mmark,HttpSession httpsession){
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		Gson gson =new Gson();
		int []a=new int[3];
		if(user==null){
			return "0";
			
		}else{
			String tag=ttag;
			String id=qqaid;
			Quesanswer qa1=quesanswerservice.selectByPrimaryKey(id);
			DbUser questuser=userservice.selectByPrimaryKey(qa1.getUid());
			qa1.setUser(questuser);
			String mark1=mmark;
			int mark2=Integer.parseInt(mark1);
			Useranswer ua2=new Useranswer();
			
			Useranswer ua=useranswerservice.FindUserAnswer(user.getRefrenceid(),id);
			///////////////////////
			//如果这个用户之前没投票
			if(ua==null){
				ua2.setUid(user.getRefrenceid());			
				ua2.setQaid(id);
				ua2.setRefrenceid(UuidUtil.getUuid());
				//如果点的是“支持”//////////////////////////////////////////////
				if(mark2==1){
					ua2.setMark(1);
					useranswerservice.insert(ua2);
					//QuesAnswer qa1=qas.FindAnswerByid(id);
					int num=qa1.getQasupport();
					int nownum=num+1;
					//增加积分
					DbUser quuser=userservice.findbyname(qa1.getUser().getUserName());
					quuser.setUserPoints(quuser.getUserPoints()+2);
					userservice.updateByPrimaryKey(quuser);
					//user u5=us.findbyname(qa1.getQaauthor().getUser_name());
					/*user.setUserPoints(user.getUserPoints()+2);
					userservice.updateByPrimaryKey(user);*/
					//增加积分
					qa1.setQasupport(nownum);
					a[0]=1;
					a[1]=nownum;
					quesanswerservice.updateByPrimaryKey(qa1);
					
				}else{//如果点的是“反对”//////////////////////////////////////////////
					ua2.setMark(0);
					useranswerservice.insert(ua2);
				//	QuesAnswer qa1=qas.FindAnswerByid(id);
					int num=qa1.getQaopposition();
					int nownum=num+1;
					//获得一个反对，减少1个积分
					DbUser quuser=userservice.findbyname(qa1.getUser().getUserName());
					quuser.setUserPoints(quuser.getUserPoints()-1);
					userservice.updateByPrimaryKey(quuser);
					//获得一个反对，减少1个积分
					qa1.setQaopposition(nownum);
					quesanswerservice.updateByPrimaryKey(qa1);
					a[0]=2;
					a[2]=nownum;
				}
				
				String str = gson.toJson(a);
				//System.out.println(str);
				return str;
				
				
			}else{///////////////////////
				//如果这个用户之前已经投票
				
				if(mark2==1){//点的是支持
					if(ua.getMark()==1){//如果相同则取消支持
						int num1=qa1.getQasupport()-1;
						qa1.setQasupport(num1);
						quesanswerservice.updateByPrimaryKey(qa1);
						//取消支持，减少2个积分
						/*user u6=us.findbyname(qa1.getQaauthor().getUser_name());
						u6.setUser_points(u6.getUser_points()-2);
						us.UpdatePoints(u6);*/
						DbUser quuser=userservice.findbyname(qa1.getUser().getUserName());
						quuser.setUserPoints(quuser.getUserPoints()-2);
						userservice.updateByPrimaryKey(quuser);
						//取消支持，减少2个积分
						//删除useranswer表中数据
						useranswerservice.deleteByPrimaryKey(ua.getRefrenceid());
						a[0]=1;
						a[1]=num1;

						
					}else{//如果不相同则取消原来的反对，并增加支持
						int num1=qa1.getQaopposition()-1;
						qa1.setQaopposition(num1);
						int num2=qa1.getQasupport()+1;
						qa1.setQasupport(num2);					
						quesanswerservice.updateByPrimaryKey(qa1);
						ua.setMark(1);
						useranswerservice.updateByPrimaryKey(ua);
						//取消反对并支持，增加3个积分
						/*user u7=us.findbyname(qa1.getQaauthor().getUser_name());
						u7.setUser_points(u7.getUser_points()+3);
						us.UpdatePoints(u7);*/
						DbUser quuser=userservice.findbyname(qa1.getUser().getUserName());
						quuser.setUserPoints(quuser.getUserPoints()+3);
						userservice.updateByPrimaryKey(quuser);
						//取消反对并支持，增加3个积分
						
						a[0]=3;
						a[1]=num2;
						a[2]=num1;

					}
					String str = gson.toJson(a);
					//System.out.println(str);
					return str;
				}else{
					if(ua.getMark()==0){//如果相同则取消反对
						int num1=qa1.getQaopposition()-1;
						qa1.setQaopposition(num1);
						quesanswerservice.updateByPrimaryKey(qa1);
						//删除useranswer表中数据
						useranswerservice.deleteByPrimaryKey(ua.getRefrenceid());
						
						//取消反，增加1个积分
						/*user u8=us.findbyname(qa1.getQaauthor().getUser_name());
						u8.setUser_points(u8.getUser_points()+1);
						us.UpdatePoints(u8);*/
						DbUser quuser=userservice.findbyname(qa1.getUser().getUserName());
						quuser.setUserPoints(quuser.getUserPoints()+1);
						userservice.updateByPrimaryKey(quuser);
						//取消反，增加1个积分
						
						a[0]=2;
						a[2]=num1;
						
					}else{//如果不相同则取消原来的支持，并增加反对
						int num1=qa1.getQasupport()-1;
						qa1.setQasupport(num1);
						int num2=qa1.getQaopposition()+1;
						qa1.setQaopposition(num2);					
						quesanswerservice.updateByPrimaryKey(qa1);
						//修改useranswer表中数据
						ua.setMark(0);
						useranswerservice.updateByPrimaryKey(ua);
						//取消支持并反对，减少3积分
						/*user u9=us.findbyname(qa1.getQaauthor().getUser_name());
						u9.setUser_points(u9.getUser_points()-3);
						us.UpdatePoints(u9);*/
						DbUser quuser=userservice.findbyname(qa1.getUser().getUserName());
						quuser.setUserPoints(quuser.getUserPoints()-3);
						userservice.updateByPrimaryKey(quuser);
						//取消支持并反对，减少3积分
						
						a[0]=3;
						a[1]=num1;
						a[2]=num2;
					}
					
					String str = gson.toJson(a);
					//System.out.println(str);
					return str;
					
				}
				
			}
			
		}
		}

}
