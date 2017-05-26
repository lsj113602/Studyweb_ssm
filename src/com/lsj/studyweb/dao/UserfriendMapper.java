package com.lsj.studyweb.dao;

import java.util.List;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.Userfriend;

public interface UserfriendMapper extends BasicDao<Userfriend>{

	List<Userfriend> FindbyNum(String uid);

	Userfriend isguanzhu(Userfriend userfriend);

	List<Userfriend> FindbyFriNum(String fid);

	List<Userfriend> FindMyFri(String refrenceid);

	List<Userfriend> FindFirendMy(String refrenceid);
    
}