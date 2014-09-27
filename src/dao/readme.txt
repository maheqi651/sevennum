��DaoĿ¼Ҫ��
1.��ӽӿڷ���ʱ��ע��author   createtime 
��������
2.ʵ�ֽӿڣ�������Ϊ'�ӿ���'+Impl   ,��ActiveDaoImpl
ʵ�ַ���ʱ��ÿ������ע��   author   implements time
3.ʵ������Ӧ�ӿڣ�ȥ service.DAOFactoryImpl new��Ӧ�Ķ��󣬲�Ȼ�ر���ָ���쳣��

����Ϊ����
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
			logger.info("��ִ��UsersDaoImpl���е�find����ʱ����\n");
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
			logger.info("��ִ��UsersDaoImpl���е�find����ʱ����:\n");
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
			logger.info("��ִ��UsersDaoImpl���е�find����ʱ����:\n");
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
			logger.info("��ִ��UsersDaoImpl���е�getcount����ʱ����\n");
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
			 logger.info("��ִ��ClientDaoImpl���е�insert����ʱ����\n");
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
			logger.info("��ִ��UsersDaoImpl���е�update����ʱ����\n");
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
			logger.info("��ִ��BankstaffDaoImpl���е�find����ʱ����:\n");
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
			logger.info("��ִ��BankstaffDaoImpl���е�getcount����ʱ����\n");
			ex.printStackTrace();
		}finally{
			MySessionFactory.closeSession();
		}	
		return count;
	}
	