package cn.com.zhirun.ssm0514.dao;

import cn.com.zhirun.ssm0514.model.BusinessModel;
import cn.com.zhirun.ssm0514.model.Pages;
import org.apache.ibatis.annotations.Param;
import org.springframework.ui.ModelMap;

import java.util.List;

public interface CBusinessModelMapper extends BusinessModelMapper{
    /*添加商家*/
    int insertBusiness(BusinessModel businessModel);
    /*查询商家*/
    List<BusinessModel> selectByBusiness(BusinessModel businessModel);
    /*返回总条数*/
    int selectTotal(BusinessModel businessModel);
    /*点击其他按钮查询*/
    List<BusinessModel> selectOtherBtn(@Param("businessOther") BusinessModel businessOther,@Param("pages")Pages pages);
    /*添加商家检查商家是否存在*/
    int checkaddBusiness(String businessname);
    /*修改页面按保存按钮*/
    public int updateModifyBusiness(BusinessModel businessModel);
    /*删除并更新*/
    int updateDeleteBusiness(String[] businessid);
}