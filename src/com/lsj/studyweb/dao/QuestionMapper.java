package com.lsj.studyweb.dao;

import java.util.List;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.Question;

public interface QuestionMapper extends BasicDao<Question>{

	List<Question> FindQueBytag(String coursename);
   
}