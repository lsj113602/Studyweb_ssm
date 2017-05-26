package com.lsj.studyweb.service.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsj.studyweb.basic.service.Impl.BasicServiceImpl;
import com.lsj.studyweb.dao.FullcalendarMapper;
import com.lsj.studyweb.model.Fullcalendar;
import com.lsj.studyweb.service.FullcalendarService;

@Service("FullcalendarService")
public class FullcalendarServiceImpl extends BasicServiceImpl<Fullcalendar> implements FullcalendarService{
	@Autowired
	private FullcalendarMapper fullcalendarmapper;
	
}
