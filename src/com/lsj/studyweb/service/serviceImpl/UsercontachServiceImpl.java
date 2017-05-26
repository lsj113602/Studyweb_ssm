package com.lsj.studyweb.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.UsercontachMapper;
import com.lsj.studyweb.model.Usercontach;
import com.lsj.studyweb.service.UsercontachService;
import com.lsj.studyweb.util.UuidUtil;
@Service("UsercontachService")
public class UsercontachServiceImpl extends BasicServiceImpl<Usercontach> implements UsercontachService{
	@Autowired
	private UsercontachMapper usercontachmapper;
	
	public void AddUserContach(String refrenceid, String refrenceid2){
		Usercontach userc=new Usercontach();
		userc.setUserId(refrenceid);
		userc.setVideoid(refrenceid2);
		Usercontach usercontach=usercontachmapper.FindUcByuid(userc);
		if(usercontach!=null){
			usercontach.setStadynum(usercontach.getStadynum()+1);
			usercontachmapper.updateByPrimaryKey(usercontach);			
		}else{
			userc.setStadynum(1);
			userc.setRefrenceid(UuidUtil.getUuid());
			usercontachmapper.insert(userc);
		}
	}

}
