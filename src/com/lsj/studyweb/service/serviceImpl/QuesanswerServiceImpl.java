package com.lsj.studyweb.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.QuesanswerMapper;
import com.lsj.studyweb.model.Quesanswer;
import com.lsj.studyweb.service.QuesanswerService;
@Service("QuesanswerService")
public class QuesanswerServiceImpl extends BasicServiceImpl<Quesanswer>implements QuesanswerService{
	@Autowired
	private QuesanswerMapper quesanswermapper; 

}
