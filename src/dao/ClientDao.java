package dao;

import bean.Activetype;
import bean.Client;

/*
 * author:maheqi   create in 2014-9-26
 * 主要客户信息的持久层操作接口
 * 提供基本的底层方法
 * 要添加方法注明后添加
 * 
 * */
public interface ClientDao {
	public void insert(Client instance);
	public void update(Client instance);
}
