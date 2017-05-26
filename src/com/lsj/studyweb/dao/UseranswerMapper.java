package com.lsj.studyweb.dao;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.Useranswer;

public interface UseranswerMapper extends BasicDao<Useranswer>{

	Useranswer FindUserAnswer(Useranswer useranswer);
  
}