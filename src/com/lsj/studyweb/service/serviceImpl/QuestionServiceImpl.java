package com.lsj.studyweb.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.QuesanswerMapper;
import com.lsj.studyweb.dao.QuestionMapper;
import com.lsj.studyweb.model.Quesanswer;
import com.lsj.studyweb.model.Question;
import com.lsj.studyweb.service.QuestionService;
@Service("QuestionService")
public class QuestionServiceImpl extends BasicServiceImpl<Question>implements QuestionService{
	@Autowired
	private QuestionMapper questionmapper;	
	@Autowired
	private QuesanswerMapper quesanswermapper;
	public List<Question> FindQueBytag(String coursename){
		
		List<Question> listque=questionmapper.FindQueBytag(coursename);
		//问题下面的答案
		for(int i=0;i<listque.size();i++){
			List<Quesanswer>listanswer=quesanswermapper.FindAnswerByqusid(listque.get(i).getRefrenceid());
			listque.get(i).setAnswer(listanswer);
		}
		return listque;
	}

}
