package dao;

import bean.Pictrue;

/*
 * author:maheqi   create in 2014-9-26
 * 主要图片持久层接口
 * 提供基本的底层方法
 * 要添加方法注明后添加
 * 
 * */
public interface PictrueDao {
	public void insert(Pictrue instance);
	public void update(Pictrue instance);
}
