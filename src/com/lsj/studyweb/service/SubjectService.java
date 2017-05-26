package com.lsj.studyweb.service;

import java.util.List;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.TbSubject;

public interface SubjectService extends BasicService<TbSubject>{

	public List<TbSubject> FindSubBycou(String cname, int nnum);

}
