package dao;

import bean.Manager;
import bean.Producttype;

/*
 * author:maheqi   create in 2014-9-26
 * 主要商品分类接口
 * 提供基本的底层方法
 * 要添加方法注明后添加
 * 
 * */
public interface ProductTypeDao {
	public void insert(Producttype instance);
	public void update(Producttype instance);
}
