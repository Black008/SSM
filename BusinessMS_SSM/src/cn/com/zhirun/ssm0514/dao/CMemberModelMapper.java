package cn.com.zhirun.ssm0514.dao;

import cn.com.zhirun.ssm0514.model.MemberModel;

import java.util.List;

public interface CMemberModelMapper extends MemberModelMapper{
     List<MemberModel> selectMembers(MemberModel member);
     List<MemberModel> selectByIds(String[] ids);
}