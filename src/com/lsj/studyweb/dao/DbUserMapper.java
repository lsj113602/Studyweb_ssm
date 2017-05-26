package com.lsj.studyweb.dao;

import java.util.List;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.DbUser;

public interface DbUserMapper extends BasicDao<DbUser>{

	public DbUser LoginServlet(DbUser user);

	public DbUser findbyname(String userName);

	public DbUser ajaxValidateEmail(String userEmail);

	public List<DbUser> FindBypoints();

	public List<DbUser> FindUserBypoints(String refrenceid);
    
}