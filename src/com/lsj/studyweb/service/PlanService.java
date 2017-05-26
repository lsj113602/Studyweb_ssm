package com.lsj.studyweb.service;

import java.util.List;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.Plan;

public interface PlanService extends BasicService<Plan>{

	public List<Plan> FindplanByUid(String refrenceid);

	public String AjaxFindAllplan(String refrenceid);

}
