package com.lsj.studyweb.service;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.Userfriend;

public interface FriendsService extends BasicService<Userfriend> {

	public int FindbyNum(String uuid);

	public Userfriend isguanzhu(String refrenceid, String uuid);

	public int FindbyFriNum(String fid);

}
