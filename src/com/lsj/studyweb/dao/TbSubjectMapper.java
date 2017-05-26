package com.lsj.studyweb.dao;

import java.util.List;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.TbSubject;
import com.lsj.studyweb.model.viewmodel.SubjectDaoModel;

public interface TbSubjectMapper extends BasicDao<TbSubject>{


    int updateByPrimaryKeyWithBLOBs(TbSubject record);

	List<TbSubject> FindSubBycou(SubjectDaoModel subdao);

}