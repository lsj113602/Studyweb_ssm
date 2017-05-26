package com.lsj.studyweb.service;

import java.util.List;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.ExamScore;

public interface ExamService extends BasicService<ExamScore>{

	public int chakanResult(List<String> subidlists, List<String> anslists,
			String refrenceid);

}
