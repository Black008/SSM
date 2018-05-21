package cn.com.zhirun.ssm0514.service;

import cn.com.zhirun.ssm0514.dao.CMemberModelMapper;
import cn.com.zhirun.ssm0514.dao.MemberModelMapper;
import cn.com.zhirun.ssm0514.model.MemberModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    MemberModelMapper memberModelMapper;

    @Autowired
    CMemberModelMapper cmemberModelMapper;


    public MemberModel selectByPrimaryKey(Integer id){
        return memberModelMapper.selectByPrimaryKey(id);
    }
    public int deleteByPrimaryKey(Integer id){
        return memberModelMapper.deleteByPrimaryKey(id);
    }
    public int insert(MemberModel record){
        int num = memberModelMapper.insert(record);
        return num;
    }

    public List<MemberModel> selectMembers(MemberModel member){
        return cmemberModelMapper.selectMembers(member);
    }

    public List<MemberModel> selectByIds(String[] id){
        return cmemberModelMapper.selectByIds(id);
    }
}
