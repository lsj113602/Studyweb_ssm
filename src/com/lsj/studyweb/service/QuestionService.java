package com.lsj.studyweb.service;

import java.util.List;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.Question;

public interface QuestionService extends BasicService<Question>{

	public List<Question> FindQueBytag(String coursename);

}
