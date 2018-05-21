package cn.com.zhirun.ssm0514.service.impl;

import cn.com.zhirun.ssm0514.dao.CBusinessModelMapper;
import cn.com.zhirun.ssm0514.model.BusinessModel;
import cn.com.zhirun.ssm0514.model.Pages;
import cn.com.zhirun.ssm0514.service.IBusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class BusinessServiceImpl implements IBusinessService {
    @Autowired
    CBusinessModelMapper cBusinessModelMapper;
    /*添加商家*/
    @Override
    public int insertBusiness(BusinessModel businessModel){
        String businessgetcurrTime = BusinessGetCurrTime();
        String userGetCurrTime = UserGetCurrTime();

        businessModel.setBusinessid("GYX"+businessgetcurrTime);
        businessModel.setCred(userGetCurrTime);
        businessModel.setUppda(userGetCurrTime);
        businessModel.setFlg(0);
        return cBusinessModelMapper.insertBusiness(businessModel);
    }
    /*查询商家*/
    @Override
    public List<BusinessModel> selectByBusiness(BusinessModel businessModel){
        List<BusinessModel> lbusinessModel = cBusinessModelMapper.selectByBusiness(businessModel);
        return lbusinessModel;
    }
    /*查询商家总条数*/
    @Override
    public int selectTotal(BusinessModel businessModel){
        int total = cBusinessModelMapper.selectTotal(businessModel);
        return total;
    }

    /*其他按钮查询*/
    @Override
    public List<BusinessModel> selectOtherBtn(BusinessModel businessOther, Pages pages){
        int num =(pages.getNowPage()-1)*pages.getShowPages();
        pages.setNum(num);
        List<BusinessModel> list = cBusinessModelMapper.selectOtherBtn(businessOther,pages);
        return list;
    }
    /*添加商家检查商家是否存在*/
    @Override
    public int checkaddBusiness(String businessname){
        int num = cBusinessModelMapper.checkaddBusiness(businessname);
        return num;
    }
   /*修改页面按保存按钮*/
   @Override
    public int updateModifyBusiness(BusinessModel businessModel){
       int num = cBusinessModelMapper.updateModifyBusiness(businessModel);
       return num;
    }
    /*删除并更新*/
    @Override
    public int updateDeleteBusiness(String[] businessid){
       /* String userGetCurrTime = UserGetCurrTime();*/
        int num = cBusinessModelMapper.updateDeleteBusiness(businessid);
        return num;
    }




    /*获取当前的创建用户时间插入数据库*/
    public String BusinessGetCurrTime() {
        /*java获取当前的时间*/
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd HHmmss");//设置日期格式
        String time =  df.format(new Date());// new Date()为获取当前系统时间
        return time;
    }
    /*获取当前的创建用户时间插入数据库*/
    public String UserGetCurrTime() {
        /*java获取当前的时间*/
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String time =  df.format(new Date());// new Date()为获取当前系统时间
        return time;
    }
}
