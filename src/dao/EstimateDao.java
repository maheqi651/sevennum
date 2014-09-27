package dao;

import bean.Client;
import bean.Estimate;

/*
 * author:maheqi   create in 2014-9-26
 * 主要客户评价操作接口
 * 提供基本的底层方法
 * 要添加方法注明后添加
 * 
 * */
public interface EstimateDao {
	public void insert(Estimate instance);
	public void update(Estimate instance);
}
