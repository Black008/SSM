package cn.com.zhirun.ssm0514.dao;

import cn.com.zhirun.ssm0514.model.BusinessModel;
import java.util.List;

public interface BusinessModelMapper {
    int deleteByPrimaryKey(String businessid);

    int insert(BusinessModel record);

    BusinessModel selectByPrimaryKey(String businessid);

    List<BusinessModel> selectAll();

    int updateByPrimaryKey(BusinessModel record);
}