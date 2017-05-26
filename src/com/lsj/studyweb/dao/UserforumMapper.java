package com.lsj.studyweb.dao;

import java.util.List;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.Userforum;

public interface UserforumMapper extends BasicDao<Userforum>{

	public List<Userforum> FindUserForu(String refrenceid);

	public Userforum FindUsFor(Userforum userforum);

}