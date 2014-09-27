package service;

 
import dao.*;
/*
 * author:maheqi   createtime 2014-9-26
 * 负责分发接口服务类
 * */
public interface DAOFactory{
      public ActiveDao createActiveDao();
      public ActiveTypeDao createActiveTypeDao();
      public ClientDao createClientDao();
      public EstimateDao createEstimateDao();
      public ManagerDao createManagerDao();
      public OrderFormDao createOrderFormDao();
      public PictrueDao createPictrueDao();
      public ProductDao createProductDao();
      public ProductTypeDao createProductTypeDao();
     
}
