package com.lsj.studyweb.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.TbSubjectMapper;
import com.lsj.studyweb.model.TbSubject;
import com.lsj.studyweb.model.viewmodel.SubjectDaoModel;
import com.lsj.studyweb.service.SubjectService;
@Service("SubjectService")
public class SubjectServiceImpl extends BasicServiceImpl<TbSubject>implements SubjectService{
	@Autowired
	private TbSubjectMapper subjectmapper;
	
	public List<TbSubject> FindSubBycou(String cname, int nnum){
		SubjectDaoModel subdao=new SubjectDaoModel();
		subdao.setCname(cname);
		subdao.setStatnum((nnum-1)*10);
		subdao.setEndnum(nnum*10-1);
		return subjectmapper.FindSubBycou(subdao);
	}

}
