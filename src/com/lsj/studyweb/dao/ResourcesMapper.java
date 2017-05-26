package com.lsj.studyweb.dao;

import java.util.List;

import com.lsj.studyweb.basic.dao.BasicDao;
import com.lsj.studyweb.model.Resources;

public interface ResourcesMapper extends BasicDao<Resources>{

	public List<Resources> FindWordResources(String rescourse);

	public List<Resources> FindCodeResources(String rescourse);

	public List<Resources> FindToolResources(String rescourse);

	public Resources FindResourcesBysrc(String filename);
   
}