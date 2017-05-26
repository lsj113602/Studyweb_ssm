package com.lsj.studyweb.service.serviceImpl;

import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.PlanMapper;
import com.lsj.studyweb.model.Plan;
import com.lsj.studyweb.model.viewmodel.PlanDaoModel;
import com.lsj.studyweb.model.viewmodel.Planyingshe;
import com.lsj.studyweb.service.PlanService;
@Service("PlanService")
public class PlanServiceImpl extends BasicServiceImpl<Plan> implements PlanService{
	@Autowired
	private PlanMapper planmapper;
	
	public List<Plan> FindplanByUid(String refrenceid){
		return planmapper.FindplanByUid(refrenceid);
	}
	
	
	public String AjaxFindAllplan(String refrenceid){
		List<Plan>listplan=planmapper.FindplanByUid(refrenceid);	
		List<Planyingshe>listys=new ArrayList<Planyingshe>();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		PlanDaoModel pdm=new PlanDaoModel();
		for (Plan p : listplan) {
			Planyingshe pys=new Planyingshe();
			if(p.getStarttime()!=null&&p.getStarttime()!=null&&p.getEndtime()!=null&&p.getEndtime()!=null){
				String start = formatter.format(p.getStarttime());				
				String finish = formatter.format(p.getEndtime());				
				pys.setID(p.getRefrenceid());
				pys.setName(p.getPlantext());
				pys.setStart(start);
				pys.setFinish(finish);
				pys.setPercentComplete(Integer.toString(p.getProgress()));
				pdm.setPid(p.getRefrenceid());
				pdm.setUid(refrenceid);
				List<Plan>listp=planmapper.Findplanchild(pdm);
				if(listp!=null && listp.size()>0){
					//list.addAll(recursionTaskList(projid,taskSchedule,task.getId(),tlist));
					try {
						pys.setChildren(recursionTaskList(refrenceid,listp));
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				listys.add(pys);				
				
			}
		}
		String str = JSON.toJSONString(listys);
		return str;

		
	}
	
	
	private List<Planyingshe> recursionTaskList(String user_id, List<Plan> listp) throws SQLException {
		// TODO Auto-generated method stub
		SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
		List<Planyingshe>listys1=new ArrayList<Planyingshe>();
		PlanDaoModel pdm=new PlanDaoModel();
		for (Plan pp : listp) {
			Planyingshe pys1=new Planyingshe();
			if(pp.getStarttime()!=null&&pp.getStarttime()!=null&&pp.getEndtime()!=null&&pp.getEndtime()!=null){
				
				String start = formatter1.format(pp.getStarttime());				
				String finish = formatter1.format(pp.getEndtime());
				
				pys1.setID(pp.getRefrenceid());
				pys1.setName(pp.getPlantext());
				pys1.setStart(start);
				pys1.setFinish(finish);
				pys1.setPercentComplete(Integer.toString(pp.getProgress()));
				pdm.setPid(pp.getRefrenceid());
				pdm.setUid(user_id);
				List<Plan>listp1=planmapper.Findplanchild(pdm);
				if(listp1!=null && listp1.size()>0){
					//list.addAll(recursionTaskList(projid,taskSchedule,task.getId(),tlist));
					pys1.setChildren(recursionTaskList(user_id,listp1));
				}
				listys1.add(pys1);				
				
			}
			
		}
		
		
		return listys1;
	

}

}
