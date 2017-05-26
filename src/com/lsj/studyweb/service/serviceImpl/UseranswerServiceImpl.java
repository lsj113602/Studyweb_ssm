package com.lsj.studyweb.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.UseranswerMapper;
import com.lsj.studyweb.model.Useranswer;
import com.lsj.studyweb.service.UseranswerService;
@Service("UseranswerService")
public class UseranswerServiceImpl extends BasicServiceImpl<Useranswer>implements UseranswerService{
	@Autowired
	private UseranswerMapper useranswermapper;
	
	public Useranswer FindUserAnswer(String refrenceid, String id){
		Useranswer useranswer =new Useranswer();
		useranswer.setQaid(id);
		useranswer.setUid(refrenceid);
		return useranswermapper.FindUserAnswer(useranswer);
		
	}

}
