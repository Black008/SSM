package cn.com.zhirun.ssm0514.service;

import cn.com.zhirun.ssm0514.model.UserModel;

public interface IUserService {
     /*检查用户名是否正确*/
     UserModel checkloginUser(String user);
     /*检查用户名密码是否正确*/
     int checkPwdisexist(UserModel userModel);
     /*注册时向数据库插入数据*/
     int insertUser(UserModel userModel);
}
