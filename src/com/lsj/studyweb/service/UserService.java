package com.lsj.studyweb.service;


import java.util.List;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.DbUser;

public interface UserService extends BasicService<DbUser>{

	public DbUser LoginServlet(String user_name, String user_password);

	public DbUser findbyname(String userName);

	public boolean ajaxValidateEmail(String userEmail);

	public void AddUser(DbUser user);

	public List<DbUser> FindUserBypoints(String refrenceid);

	public List<DbUser> FindBypoints();

}
