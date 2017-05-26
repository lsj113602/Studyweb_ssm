package com.lsj.studyweb.dao;

import java.util.List;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.Quesanswer;

public interface QuesanswerMapper extends BasicDao<Quesanswer>{

	List<Quesanswer> FindAnswerByqusid(String refrenceid);
   
}