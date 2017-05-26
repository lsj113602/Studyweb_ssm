package com.lsj.studyweb.util;

import javax.xml.registry.infomodel.User;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.UnavailableSecurityManagerException;
import org.apache.shiro.session.InvalidSessionException;
import org.apache.shiro.subject.Subject;

public class UserUtil {
	private UserUtil(){
		
	}
    /**
     * 获取当前登录者对象
     */
    public static User getPrincipal()
    {
        try
        {
            Subject subject = SecurityUtils.getSubject();
            Object object = subject.getPrincipal();
            if (null != object) { return (User) object; }
        }
        catch (UnavailableSecurityManagerException e)
        {
            
        }
        catch (InvalidSessionException e)
        {
           
        }
        return null;
    }

}
