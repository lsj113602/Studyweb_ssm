package com.lsj.studyweb.dao;

import java.util.List;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.Mycourse;

public interface MycourseMapper extends BasicDao<Mycourse>{

	public List<Mycourse> FindbyNum(String refrenceid);

	public Mycourse FindMyCou(Mycourse mycourse);

    
}