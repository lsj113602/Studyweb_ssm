package com.lsj.studyweb.service;

import java.util.List;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.Courseforum;

public interface CourseForumService extends BasicService<Courseforum>{

	List<Courseforum> findByvid(String refrenceid);
	


}
