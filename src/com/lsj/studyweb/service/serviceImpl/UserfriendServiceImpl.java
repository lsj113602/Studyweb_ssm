package com.lsj.studyweb.service.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.DbUserMapper;
import com.lsj.studyweb.dao.UserfriendMapper;
import com.lsj.studyweb.model.DbUser;
import com.lsj.studyweb.model.Userfriend;
import com.lsj.studyweb.service.UserfriendService;

@Service("UserfriendService")
public class UserfriendServiceImpl extends BasicServiceImpl<Userfriend>implements UserfriendService{
	@Autowired
	private UserfriendMapper userfriendmapper;
	@Autowired
	private DbUserMapper dbusermapper;
	
	
	public List<Userfriend> FindMyFri(String refrenceid){
		 return userfriendmapper.FindMyFri(refrenceid);
	}
	
	public List<DbUser> FindFirendMy(String refrenceid){
		List<Userfriend>listf=userfriendmapper.FindFirendMy(refrenceid);
		
		List<DbUser>listu=new ArrayList<DbUser>();
		for(Userfriend uf:listf){
			DbUser u=dbusermapper.selectByPrimaryKey(uf.getUserId());
			listu.add(u);
		}		
		return listu;
		
	}

}
