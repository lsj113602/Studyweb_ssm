package com.lsj.studyweb.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.UserforumMapper;
import com.lsj.studyweb.model.Userforum;
import com.lsj.studyweb.service.UserforumService;
@Service("UserforumService")
public class UserforumServiceImpl extends BasicServiceImpl<Userforum> implements UserforumService{
	@Autowired
	private UserforumMapper userforummapper;
	public Userforum FindUsFor(String refrenceid, String id){
		Userforum userf=new Userforum();
		userf.setUserId(refrenceid);
		userf.setCfId(id);
		return userforummapper.FindUsFor(userf);
		
	}
	
	public int FindUserForu(String iid){
		List<Userforum> list=userforummapper.FindUserForu(iid);
		return list.size();
	}

}
