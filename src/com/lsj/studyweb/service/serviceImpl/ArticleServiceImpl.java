package com.lsj.studyweb.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.ArticleMapper;
import com.lsj.studyweb.model.Article;
import com.lsj.studyweb.service.ArticleService;

@Service("ArticleService")
public class ArticleServiceImpl extends BasicServiceImpl<Article> implements ArticleService{
	@Autowired
	private ArticleMapper articlemapper;
	
	public List<Article> FindArticleByauthor(String refrenceid){
		return articlemapper.FindArticleByauthor(refrenceid);
	}
	
	public List<Article> FindArticleBycname(String cname){
		return articlemapper.FindArticleBycname(cname);
	}

}
