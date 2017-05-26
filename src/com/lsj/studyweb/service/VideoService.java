package com.lsj.studyweb.service;
import java.util.List;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.Video;

public interface VideoService extends BasicService<Video>{

	public List<Video> FindByNaDesc(String coursename);

	public Video FindByVidNA(String videoname, String author);

	public Video FindByVidNA1(String videoname, String author, String refrenceid);

	public List<Video> FindByhot();

	public List<Video> FindByWriter5(String author);

	public List<Video> FindByKnow(String zhishidianid);

}
