package cn.com.zhirun.ssm0514.dao;

import cn.com.zhirun.ssm0514.model.UserModel;
import java.util.List;

public interface UserModelMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserModel record);

    UserModel selectByPrimaryKey(Integer id);

    List<UserModel> selectAll();

    int updateByPrimaryKey(UserModel record);
}