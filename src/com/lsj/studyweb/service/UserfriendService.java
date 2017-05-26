package com.lsj.studyweb.service;

import java.util.List;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.DbUser;
import com.lsj.studyweb.model.Userfriend;

public interface UserfriendService extends BasicService<Userfriend>{

	public List<Userfriend> FindMyFri(String refrenceid);

	public List<DbUser> FindFirendMy(String refrenceid);

}
