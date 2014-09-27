本Action目录要求
1.添加相应的action类  命名必须为bean下每个pojo对应的名字+Action  ,例如：ActiveAction
此类必须继承 BaseAction
2.每一个对应的Action类负责所有对应类业务上所有操作。例如 ActiveAction只负责活动操作
3.在action中调用持久层使用Manager访问，不可以直接new ，不可以通过其他方式访问数据库，
例如：Manager.getInstance().create*();获得相应Dao
4.添加相应的action 注明author   addtime
方法，也注明author   addtime 和该方法功能描述