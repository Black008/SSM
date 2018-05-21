package cn.com.zhirun.ssm0514.dao;

import cn.com.zhirun.ssm0514.model.MemberModel;

import java.util.List;

public interface MemberModelMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MemberModel record);

    MemberModel selectByPrimaryKey(Integer id);

    List<MemberModel> selectAll();

    int updateByPrimaryKey(MemberModel record);
}