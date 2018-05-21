package cn.com.zhirun.ssm0514.service.impl;

import cn.com.zhirun.ssm0514.dao.CUserModelMapper;
import cn.com.zhirun.ssm0514.model.UserModel;
import cn.com.zhirun.ssm0514.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;


@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    CUserModelMapper cUserModelMapper;
    /*检查用户名是否存在*/
    @Override
    public UserModel checkloginUser(String user){
       return cUserModelMapper.checkloginUser(user);
    }
    /*检查用户名密码是否存在*/
    @Override
    public int checkPwdisexist(UserModel userModel){
        int num = cUserModelMapper.checkPwdisexist(userModel);
        return num;
    }
    /*注册时向数据库插入数据*/
    @Override
    public int insertUser(UserModel userModel){
        String time = UserGetCurrTime();
        userModel.setCredate(time);
        userModel.setUpddate(time);
        int num = cUserModelMapper.insertUser(userModel);
        return num;
    }
    /*获取当前的创建用户时间插入数据库*/
    public String UserGetCurrTime() {
        /*java获取当前的时间*/
        SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");//设置日期格式
        String time =  df.format(new Date());// new Date()为获取当前系统时间
        return time;
    }
}
