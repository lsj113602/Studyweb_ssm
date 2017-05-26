package com.lsj.studyweb.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.CourseforumMapper;
import com.lsj.studyweb.dao.ForumreplyMapper;
import com.lsj.studyweb.dao.UserforumMapper;
import com.lsj.studyweb.dao.UserfriendMapper;
import com.lsj.studyweb.dao.VideoMapper;
import com.lsj.studyweb.model.Courseforum;
import com.lsj.studyweb.model.Forumreply;
import com.lsj.studyweb.model.Userforum;
import com.lsj.studyweb.model.Video;
import com.lsj.studyweb.service.VideoService;
@Service("VideoService")
public class VideoServiceImpl extends BasicServiceImpl<Video> implements VideoService{
	@Autowired
	private VideoMapper videomapper;
	@Autowired
	private ForumreplyMapper forumreplymapper;
	@Autowired
	private CourseforumMapper courseforummapper;
	@Autowired
	private UserforumMapper userforummapper;
	public List<Video> FindByNaDesc(String coursename){
		
		return videomapper.FindByNaDesc(coursename);
	}
	/**
	 * 用户没有登录，进入视频播放界面
	 */
	public Video FindByVidNA(String videoname, String author){
		Video video=new Video();
		video.setVideoname(videoname);
		video.setVideoupwriter(author);
		Video video1=videomapper.FindByVidNA(video);
		List<Courseforum>courseforums=courseforummapper.FindcourseforumByVideoid(video1.getRefrenceid());
		for (int i=0;i<courseforums.size();i++) {
			List<Forumreply>forumreplys=forumreplymapper.FindforumBycfid(courseforums.get(i).getRefrenceid());
			courseforums.get(i).setForums(forumreplys);
			//赞的人数和自己是否已经赞过
			List<Userforum> num=userforummapper.FindUserForu(courseforums.get(i).getRefrenceid());
			courseforums.get(i).setCfCount(num.size());
		}
		video1.setCourseforums(courseforums);
		return video1;
	}
	/**
	 * 用户已登录，进入视频播放界面，评论是否赞
	 */
	public Video FindByVidNA1(String videoname, String author, String refrenceid){
		Video video=new Video();
		video.setVideoname(videoname);
		video.setVideoupwriter(author);
		Video video1=videomapper.FindByVidNA(video);
		List<Courseforum>courseforums=courseforummapper.FindcourseforumByVideoid(video1.getRefrenceid());
		for (int i=0;i<courseforums.size();i++) {
			List<Forumreply>forumreplys=forumreplymapper.FindforumBycfid(courseforums.get(i).getRefrenceid());
			courseforums.get(i).setForums(forumreplys);
			//赞的人数和自己是否已经赞过
			List<Userforum> num=userforummapper.FindUserForu(courseforums.get(i).getRefrenceid());
			courseforums.get(i).setCfCount(num.size());
			//查询用户是否赞过
			Userforum userforum=new Userforum();
			userforum.setCfId(courseforums.get(i).getRefrenceid());
			userforum.setUserId(author);
			Userforum uf=userforummapper.FindUsFor(userforum);
			if(uf!=null){
				courseforums.get(i).setCfStat(1);
			}
		}
		video1.setCourseforums(courseforums);
		return video1;
	}
	/**
	 * 按热度排序
	 */
	public List<Video> FindByhot(){
		return videomapper.FindByhot();
	}
	/**
	 * 按作者排序
	 */
	public List<Video> FindByWriter5(String author){
		return videomapper.FindByWriter5(author);
	}
	/**
	 * 按知识点排序
	 */
	public List<Video> FindByKnow(String zhishidianid){
		String zhishidianid1="%"+zhishidianid+"%";
		return videomapper.FindByKnow(zhishidianid1);
	}


}
