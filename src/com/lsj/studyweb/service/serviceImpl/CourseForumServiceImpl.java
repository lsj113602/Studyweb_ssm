package com.lsj.studyweb.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.CourseforumMapper;
import com.lsj.studyweb.dao.ForumreplyMapper;
import com.lsj.studyweb.dao.UserforumMapper;
import com.lsj.studyweb.model.Courseforum;
import com.lsj.studyweb.model.Forumreply;
import com.lsj.studyweb.model.Userforum;
import com.lsj.studyweb.service.CourseForumService;

@Service("CourseForumService")
public class CourseForumServiceImpl extends BasicServiceImpl<Courseforum> implements CourseForumService{
	@Autowired
	private CourseforumMapper courseforummapper;
	@Autowired
	private ForumreplyMapper forumreplymapper;
	@Autowired
	private UserforumMapper userforummapper;
	public List<Courseforum> findByvid(String refrenceid){
		List<Courseforum>courseforums=courseforummapper.FindcourseforumByVideoid(refrenceid);
		for (int i=0;i<courseforums.size();i++) {
			List<Forumreply>forumreplys=forumreplymapper.FindforumBycfid(courseforums.get(i).getRefrenceid());
			courseforums.get(i).setForums(forumreplys);
			//赞的人数和自己是否已经赞过
			List<Userforum> num=userforummapper.FindUserForu(courseforums.get(i).getRefrenceid());
			courseforums.get(i).setCfCount(num.size());
		}
		return courseforums;
	}

}
