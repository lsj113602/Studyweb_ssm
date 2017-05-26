package com.lsj.studyweb.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.lsj.studyweb.model.DbUser;
import com.lsj.studyweb.model.Userfriend;
import com.lsj.studyweb.service.FriendsService;
import com.lsj.studyweb.service.UserService;
import com.lsj.studyweb.util.UuidUtil;

@Controller
@RequestMapping("/friend")
public class FriendsController {
	@Autowired
	private FriendsService friendsservice;
	@Autowired
	private UserService userservice;
	@RequestMapping("/FindOtherUser")
	public ModelAndView FindOtherUser(String uuid,HttpSession httpsession){
		    DbUser user=(DbUser) httpsession.getAttribute("sessionUser");

		    Map<String,Object>data=new HashMap<String,Object>();
			int count=friendsservice.FindbyFriNum(uuid);
			data.put("count",count);

			if(user!=null){
			Userfriend uf1=friendsservice.isguanzhu(user.getRefrenceid(),uuid);
			
			if(uf1!=null){
				data.put("isno",1);
				}
			}			
			DbUser uf=userservice.selectByPrimaryKey(uuid);
			data.put("ufriend",uf);

	/*		data.put("uname",uname);
			data.put("cname",cname);*/
			data.put("uid",uuid);
		
			return new ModelAndView("user/FriendHome",data);
		   
	}
	@RequestMapping("/AjaxAddFriend")
	public @ResponseBody String AjaxAddFriend(String fid,HttpSession httpsession) throws IOException{
		DbUser user=(DbUser) httpsession.getAttribute("sessionUser");
		Gson gson =new Gson();		
		int []a=new int[2];
		if(user==null){
			a[0]=1;
			String str = gson.toJson(a);
			return str;
		}else{
			Userfriend uf1=friendsservice.isguanzhu(user.getRefrenceid(),fid);
			if(uf1!=null){
				//friendsservice.DelFriend(u.getUser_id(),frid);
				int delnum=friendsservice.deleteByPrimaryKey(uf1.getRefrenceid());
				int num1=friendsservice.FindbyFriNum(fid);
				a[1]=num1;
				a[0]=2;
				String str = gson.toJson(a);
				return str;
			}else{
			
			
			Userfriend uf=new Userfriend();
			//int uid=Integer.parseInt(req.getParameter("uid"));			
			DbUser ufri=userservice.selectByPrimaryKey(fid);
			uf.setUuid(ufri.getRefrenceid());
			uf.setUserId(user.getRefrenceid());
			uf.setTime(new Date());
			uf.setRefrenceid(UuidUtil.getUuid());
			int intnum=friendsservice.insert(uf);
			int num=friendsservice.FindbyFriNum(fid);
			a[1]=num;
			a[0]=0;
			String str = gson.toJson(a);
			return str;
			}

		   
	}
}
	

}
