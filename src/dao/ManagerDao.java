package dao;

import bean.Estimate;
import bean.Manager;

/*
 * author:maheqi   create in 2014-9-26
 * 主要管理员信息接口
 * 提供基本的底层方法
 * 要添加方法注明后添加
 * 
 * */
public interface ManagerDao {
	public void insert(Manager instance);
	public void update(Manager instance);
	
}
