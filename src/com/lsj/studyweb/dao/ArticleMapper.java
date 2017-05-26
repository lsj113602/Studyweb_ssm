package com.lsj.studyweb.dao;

import java.util.List;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.Article;

public interface ArticleMapper extends BasicDao<Article>{

	List<Article> FindArticleByauthor(String refrenceid);

	List<Article> FindArticleBycname(String cname);
    
}