package com.lsj.studyweb.dao;

import java.util.List;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.Plan;
import com.lsj.studyweb.model.viewmodel.PlanDaoModel;

public interface PlanMapper extends BasicDao<Plan>{

	List<Plan> FindplanByUid(String refrenceid);

	List<Plan> Findplanchild(PlanDaoModel pdm);
   
}