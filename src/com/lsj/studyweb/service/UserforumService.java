package com.lsj.studyweb.service;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.Userforum;

public interface UserforumService extends BasicService<Userforum>{

	public Userforum FindUsFor(String refrenceid, String id);

	public int FindUserForu(String iid);

}
