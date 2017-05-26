package com.lsj.studyweb.service;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.Useranswer;

public interface UseranswerService extends BasicService<Useranswer> {

	public Useranswer FindUserAnswer(String refrenceid, String id);

}
