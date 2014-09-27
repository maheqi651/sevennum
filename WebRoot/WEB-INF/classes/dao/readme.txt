本Dao目录要求
1.添加接口方法时候，注明author   createtime 
功能作用
2.实现接口，类命名为'接口名'+Impl   ,如ActiveDaoImpl
实现方法时候每个方法注明   author   implements time
3.实现完相应接口，去 service.DAOFactoryImpl new相应的对象，不然回报空指针异常。

以下为例子
public Bank find(String bankid) {
		Session session = MySessionFactory.getSession();
		Transaction tx = null;
		Bank admin = null;
		try{
			String hql = "select a from Bank as a where a.bankid=:bankid ";
			Query query = session.createQuery(hql);
			query.setString("bankid", bankid);
		 
			query.setMaxResults(1);
			tx = session.beginTransaction();
			admin = (Bank)query.uniqueResult();
			tx.commit();
		}catch(Exception ex){
			if(tx!=null)tx.rollback();
			logger.info("在执行UsersDaoImpl类中的find方法时出错：\n");
			ex.printStackTrace();
		}finally{
			MySessionFactory.closeSession();
		}	
		return admin;
	}

	public List find(int startpage, int pagesize) {
		Session session = MySessionFactory.getSession();
		Transaction tx = null;
		List list = null;
		try{
			String sql=  "select a from Bank as a where a.ispass!='1'";
			Query query = session.createQuery(sql);
			query.setMaxResults(pagesize);
			query.setFirstResult(startpage);
			tx = session.beginTransaction();
			list = query.list();
			tx.commit();
		    if (!Hibernate.isInitialized(list))Hibernate.initialize(list);
		}catch(Exception ex){
			if(tx!=null)tx.rollback();
			logger.info("在执行UsersDaoImpl类中的find方法时出错:\n");
			ex.printStackTrace();
		}finally{
			MySessionFactory.closeSession();
		}	
		return list;
	}

	public List findall() {
		Session session = MySessionFactory.getSession();
		Transaction tx = null;
		List list = null;
		try{
			String sql=  "select a from Bank as a where a.ispass!='1'";
			Query query = session.createQuery(sql);
			tx = session.beginTransaction();
			list = query.list();
			tx.commit();
		    if (!Hibernate.isInitialized(list))Hibernate.initialize(list);
		}catch(Exception ex){
			if(tx!=null)tx.rollback();
			logger.info("在执行UsersDaoImpl类中的find方法时出错:\n");
			ex.printStackTrace();
		}finally{
			MySessionFactory.closeSession();
		}	
		return list;
	}
	public int getcount() {
		Session session = MySessionFactory.getSession();
		Transaction tx = null;
      	int count = 0;
		try{
			tx = session.beginTransaction();
			Query query = session.createQuery("select count(*) from Bank as  b where b.ispass!='1' ");
			query.setMaxResults(1);
			count = ((Number)query.uniqueResult()).intValue();
			tx.commit();
		}catch(Exception ex){
			if(tx!=null)tx.rollback();
			logger.info("在执行UsersDaoImpl类中的getcount方法时出错：\n");
			ex.printStackTrace();
		}finally{
			MySessionFactory.closeSession();
		}	
		return count;
	}

	public void insert(Bank instance) {
		Session session =null;
		Transaction tx = null;
		try{
			session = MySessionFactory.getSession();
			tx = session.beginTransaction();
			session.save(instance);
			tx.commit();
		}catch(Exception ex){
			if(tx!=null)tx.rollback();
			 logger.info("在执行ClientDaoImpl类中的insert方法时出错：\n");
			ex.printStackTrace();
		}finally{
			MySessionFactory.closeSession();
		}	
		
	}

	public void update(Bank instance) {
		Session session = MySessionFactory.getSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			session.update(instance);
			tx.commit();
		}catch(Exception ex){
			if(tx!=null)tx.rollback();
			logger.info("在执行UsersDaoImpl类中的update方法时出错：\n");
			ex.printStackTrace();
		}finally{
			MySessionFactory.closeSession();
		}	
		
	}
	
	
	public List find(int startpage, int pagesize, String idcard,
			String realname, int bankid,int ispass) {
		Session session = MySessionFactory.getSession();
		Transaction tx = null;
		List list = null;
		try{
			String sql=  "select  a from Bankstaff as a where  1=1";
			if(ispass >=0)
				sql+=" and a.ispass=:ispass ";
			if(realname!=null&&!"".equals(realname))
				sql+=" and a.realname like :realname ";
			if(bankid>0)
				sql+=" and  a.bankdetail.id=:bankid ";
			if(idcard!=null&&!"".equals(idcard))
				sql+=" and a.idcard like :idcard ";
			System.out.println(sql);
			Query query = session.createQuery(sql);
			//query.setInteger("bankid", type);
			if(realname!=null&&!"".equals(realname))
				query.setString("realname", "%"+realname+"%");
			if(bankid>0)
				query.setInteger("bankid", bankid);
			if(idcard!=null&&!"".equals(idcard))
				query.setString("idcard", "%"+idcard+"%");
			if(ispass >=0)
				query.setInteger("ispass", ispass);
			tx = session.beginTransaction();
			query.setResultTransformer(Transformers.aliasToBean(Bankdetail.class));  
			list = query.list();
			tx.commit();
		    if (!Hibernate.isInitialized(list))Hibernate.initialize(list);
		}catch(Exception ex){
			if(tx!=null)tx.rollback();
			logger.info("在执行BankstaffDaoImpl类中的find方法时出错:\n");
			ex.printStackTrace();
		}finally{
			MySessionFactory.closeSession();
		}	
		return list;
	}

	public int getcount(String idcard, String realname, int bankid,int ispass) {
		Session session = MySessionFactory.getSession();
		Transaction tx = null;
      	int count = 0;
      	String sql="";
		try{
			sql=  "select  count(*) from Bankstaff as a where 1=1  ";
			if(ispass >=0)
			sql+=" and a.ispass=:ispass ";
			if(realname!=null&&!"".equals(realname))
				sql+=" and a.realname like :realname ";
			if(bankid>0)
				sql+=" and a.bankdetail.id=:bankid ";
			if(idcard!=null&&!"".equals(idcard))
				sql+=" and a.idcard like :idcard ";
			System.out.println("-----getcount----"+sql);
			Query query = session.createQuery(sql);
			if(realname!=null&&!"".equals(realname))
				query.setString("realname", "%"+realname+"%");
			if(bankid>0)
				query.setInteger("bankid", bankid);
			if(idcard!=null&&!"".equals(idcard))
				query.setString("idcard", "%"+idcard+"%");
			if(ispass >=0)
				query.setInteger("ispass", ispass);
			tx = session.beginTransaction();
			query.setMaxResults(1);
			count = ((Number)query.uniqueResult()).intValue();
			tx.commit();
		}catch(Exception ex){
			if(tx!=null)tx.rollback();
			logger.info("在执行BankstaffDaoImpl类中的getcount方法时出错：\n");
			ex.printStackTrace();
		}finally{
			MySessionFactory.closeSession();
		}	
		return count;
	}
	