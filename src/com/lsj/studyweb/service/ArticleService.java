package com.lsj.studyweb.service;

import java.util.List;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.Article;

public interface ArticleService extends BasicService<Article>{

	public List<Article> FindArticleByauthor(String refrenceid);

	public List<Article> FindArticleBycname(String cname);

}
