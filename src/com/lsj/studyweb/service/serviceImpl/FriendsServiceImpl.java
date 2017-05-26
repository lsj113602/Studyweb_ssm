package com.lsj.studyweb.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.UserfriendMapper;
import com.lsj.studyweb.model.Userfriend;
import com.lsj.studyweb.service.FriendsService;
@Service("FriendsService")
public class FriendsServiceImpl extends BasicServiceImpl<Userfriend>implements FriendsService{
	@Autowired
	private UserfriendMapper userfriendmapper;
	
	public int FindbyNum(String uid){
		List<Userfriend>listfri=userfriendmapper.FindbyNum(uid);
		return listfri.size();
	}
	
	public int FindbyFriNum(String fid){
		List<Userfriend>listfri=userfriendmapper.FindbyFriNum(fid);
		return listfri.size();
	}
	/**
	 * 查询是否添加该好友
	 */
	public Userfriend isguanzhu(String refrenceid, String uuid){
		Userfriend userfriend=new Userfriend();
		userfriend.setUserId(refrenceid);
		userfriend.setUuid(uuid);
		return userfriendmapper.isguanzhu(userfriend);
	}
	

}
