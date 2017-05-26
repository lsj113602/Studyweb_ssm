package com.lsj.studyweb.service.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.ErrSubjectMapper;
import com.lsj.studyweb.dao.ExamScoreMapper;
import com.lsj.studyweb.dao.TbSubjectMapper;
import com.lsj.studyweb.model.ErrSubject;
import com.lsj.studyweb.model.ExamScore;
import com.lsj.studyweb.model.TbSubject;
import com.lsj.studyweb.service.ExamService;

@Service("ExamService")
public class ExamServiceImpl extends BasicServiceImpl<ExamScore> implements ExamService{
	@Autowired
	private ExamScoreMapper examscoremapper;
	@Autowired
	private TbSubjectMapper subjectmapper;
	@Autowired
	private ErrSubjectMapper errsubjectmapper;
	
	public int chakanResult(List<String> subidlists, List<String> anslists,
			String refrenceid){
		ErrSubject err=new ErrSubject();
		int total=0;
		TbSubject sub=new TbSubject();
		for(int i = 0; i < subidlists.size(); i++) {
			//String subid= Integer.toString(subjectID.get(i));
			//////////////////////////////////////////////////////////////////////
			sub=subjectmapper.selectByPrimaryKey(subidlists.get(i));
			String rightAnswer = sub.getSubjectanswer();
			if(rightAnswer.equals(anslists.get(i))) {
				total +=(100/subidlists.size());
			}else{
				
				err.setUserId(refrenceid);
				//int sb_id = Integer.parseInt(subjectID.get(i));
				//TbSubject sj=subjectmapper.selectByPrimaryKey();
				err.setSubjectId(subidlists.get(i));
				err.setTestTime(new Date());	
				err.setErrFrom(sub.getSubjectxueke());
				err.setUserAnswer(anslists.get(i));
				errsubjectmapper.insert(err);				
			}
		}
		return total;
	}

}
