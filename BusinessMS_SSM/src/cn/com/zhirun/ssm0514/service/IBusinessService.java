package cn.com.zhirun.ssm0514.service;

import cn.com.zhirun.ssm0514.model.BusinessModel;
import cn.com.zhirun.ssm0514.model.Pages;
import org.springframework.ui.ModelMap;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface IBusinessService {
     /*添加商家*/
     int insertBusiness(BusinessModel businessModel);
     /*查询商家*/
     List<BusinessModel> selectByBusiness(BusinessModel businessModel);
     /*查询商家总条数*/
      int selectTotal(BusinessModel businessModel);
      /*其他按钮查询*/
      List<BusinessModel> selectOtherBtn(BusinessModel businessOther, Pages pages);
      /*添加商家检查商家是否存在*/
      int checkaddBusiness(String businessname);
      /*修改页面按保存按钮*/
      int updateModifyBusiness(BusinessModel businessModel);
      /*删除并更新*/
      int updateDeleteBusiness(String[] businessid);
}
