package com.lsj.studyweb.service;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.Mycourse;

public interface MycourseService extends BasicService<Mycourse>{

	public Mycourse FindMyCou(String refrenceid, String refrenceid2);

}
