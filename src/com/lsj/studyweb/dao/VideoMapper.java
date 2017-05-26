package com.lsj.studyweb.dao;

import java.util.List;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.Video;

public interface VideoMapper extends BasicDao<Video>{

	public List<Video> FindByNaDesc(String coursename);

	public Video FindByVidNA(Video video);

	public List<Video> FindByhot();

	public List<Video> FindByWriter5(String author);

	public List<Video> FindByKnow(String zhishidianid);

}