package dao;

import bean.Active;

/*
 * author:maheqi   create in 2014-9-26
 * 主要负责活动的持久层操作
 * 提供基本的底层方法
 * 要添加方法注明后添加
 * 
 * */
public interface ActiveDao {
	public void insert(Active instance);
	public void update(Active instance);
	 
	
	
}
