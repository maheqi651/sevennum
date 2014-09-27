package dao;

import bean.Orderform;

/*
 * author:maheqi   create in 2014-9-26
 * 主要订单底层接口
 * 提供基本的底层方法
 * 要添加方法注明后添加
 * 
 * */
public interface OrderFormDao {
	public void insert(Orderform instance);
	public void update(Orderform instance);
}
