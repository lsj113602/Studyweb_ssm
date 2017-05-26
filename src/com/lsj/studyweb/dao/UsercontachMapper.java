package com.lsj.studyweb.dao;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.Usercontach;

public interface UsercontachMapper extends BasicDao<Usercontach>{

	public Usercontach FindUcByuid(Usercontach userc);
    
}