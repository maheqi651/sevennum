package dao;

import bean.Active;
import bean.Activetype;

/*
 * author:maheqi   create in 2014-9-26
 * 主要负责活动分类的持久层操作
 * 提供基本的底层方法
 * 要添加方法注明后添加
 * 
 * */
public interface ActiveTypeDao {
	public void insert(Activetype instance);
	public void update(Activetype instance);
}
