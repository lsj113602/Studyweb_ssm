package com.lsj.studyweb.dao;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.ErrSubject;

public interface ErrSubjectMapper extends BasicDao<ErrSubject>{
    int insert(ErrSubject record);

    int insertSelective(ErrSubject record);
}