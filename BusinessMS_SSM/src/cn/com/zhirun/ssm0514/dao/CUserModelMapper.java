package cn.com.zhirun.ssm0514.dao;

import cn.com.zhirun.ssm0514.model.MemberModel;
import cn.com.zhirun.ssm0514.model.UserModel;
import org.springframework.ui.ModelMap;

import java.util.List;

public interface CUserModelMapper extends UserModelMapper {
    /*检查用户名是否正确*/
    UserModel checkloginUser(String user);
    /*检查用户名密码是否正确*/
    int checkPwdisexist(UserModel userModel);
    /*注册时向数据库插入数据*/
    int insertUser(UserModel userModel);
}