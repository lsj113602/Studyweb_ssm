package com.lsj.studyweb.dao;

import java.util.List;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.Forumreply;

public interface ForumreplyMapper extends BasicDao<Forumreply>{

	List<Forumreply> FindforumBycfid(String refrenceid);
   
}