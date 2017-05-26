package com.lsj.studyweb.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.DbUserMapper;
import com.lsj.studyweb.model.DbUser;
import com.lsj.studyweb.service.UserService;
@Service("UserService")
public class UserServiceImpl extends BasicServiceImpl<DbUser>implements UserService{
	

	@Autowired
	private DbUserMapper usermapper;
	
	public DbUser LoginServlet(String user_name, String user_password){
		DbUser user=new DbUser();
		user.setUserName(user_name);
		user.setUserPassword(user_password);
		return usermapper.LoginServlet(user);
	}
	
	public DbUser findbyname(String userName){
		return usermapper.findbyname(userName);
	}
	
	public boolean ajaxValidateEmail(String userEmail){
		DbUser user=usermapper.ajaxValidateEmail(userEmail);
		if(user!=null)
		return true;
		else{
		return false;	
		}
	}
	
	public void AddUser(DbUser user){
		usermapper.insert(user);
	}
	public List<DbUser> FindUserBypoints(String refrenceid){
		return usermapper.FindUserBypoints(refrenceid);
	}

	public List<DbUser> FindBypoints(){
		return usermapper.FindBypoints();
	}

}
