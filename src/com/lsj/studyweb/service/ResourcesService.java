package com.lsj.studyweb.service;

import java.util.List;

import com.lsj.studyweb.basic.service.service.BasicService;
import com.lsj.studyweb.model.Resources;


public interface ResourcesService extends BasicService<Resources>{

	public List<Resources> FindWordResources(String rescourse);

	public List<Resources> FindCodeResources(String rescourse);

	public List<Resources> FindToolResources(String rescourse);

	public Resources FindResourcesBysrc(String filename);

}
