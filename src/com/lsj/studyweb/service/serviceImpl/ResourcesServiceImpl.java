package com.lsj.studyweb.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.ResourcesMapper;
import com.lsj.studyweb.model.Resources;
import com.lsj.studyweb.service.ResourcesService;
@Service("ResourcesService")
public class ResourcesServiceImpl extends BasicServiceImpl<Resources> implements ResourcesService{
	@Autowired
	private ResourcesMapper resourcesmapper;
	public List<Resources> FindWordResources(String rescourse){
		return resourcesmapper.FindWordResources(rescourse);
	}

	public List<Resources> FindCodeResources(String rescourse){
		return resourcesmapper.FindCodeResources(rescourse);
	}

	public List<Resources> FindToolResources(String rescourse){
		return resourcesmapper.FindToolResources(rescourse);
	}
	public Resources FindResourcesBysrc(String filename){
		return resourcesmapper.FindResourcesBysrc(filename);
	}
}
