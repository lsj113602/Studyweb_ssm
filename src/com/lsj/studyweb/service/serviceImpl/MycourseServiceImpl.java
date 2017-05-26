package com.lsj.studyweb.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.MycourseMapper;
import com.lsj.studyweb.model.Mycourse;
import com.lsj.studyweb.service.MycourseService;
@Service("MycourseService")
public class MycourseServiceImpl extends BasicServiceImpl<Mycourse>implements MycourseService{
	@Autowired
	private MycourseMapper mycoursemapper;
	public Mycourse FindMyCou(String refrenceid, String refrenceid2){
		Mycourse mycourse=new Mycourse();
		mycourse.setCourseid(refrenceid2);
		mycourse.setUserId(refrenceid);
		return mycoursemapper.FindMyCou(mycourse);
	}
}
