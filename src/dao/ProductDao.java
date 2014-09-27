package dao;

import bean.Product;

/*
 * author:maheqi   create in 2014-9-26
 * 主要商品持久层接口
 * 提供基本的底层方法
 * 要添加方法注明后添加
 * 
 * */
public interface ProductDao {
	public void insert(Product instance);
	public void update(Product instance);
}
