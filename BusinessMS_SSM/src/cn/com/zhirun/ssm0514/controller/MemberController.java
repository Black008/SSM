package cn.com.zhirun.ssm0514.controller;

import cn.com.zhirun.ssm0514.model.MemberModel;
import cn.com.zhirun.ssm0514.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RequestMapping("/member")
@Controller
public class MemberController {
    @Autowired
    MemberService memberService;
    @RequestMapping("/selectById")
    public ModelAndView selectByPrimaryKey(Integer id){
        MemberModel memberModel = memberService.selectByPrimaryKey(id);
        ModelAndView mv = new ModelAndView();
        mv.addObject("member",memberModel);
        mv.setViewName("result");
        return mv;
    }

    @RequestMapping("/selectByMember")
    public ModelAndView selectByPrimaryKey(MemberModel member){
        MemberModel memberModel = memberService.selectByPrimaryKey(member.getId());
        ModelAndView mv = new ModelAndView();
        mv.addObject("member",memberModel);
        mv.setViewName("result");
        return mv;
    }
    @RequestMapping("/toResult")
    public String toResult(){
        return "result";
    }

    @ResponseBody
    @RequestMapping("/selectByAjax")
    public MemberModel selectByAjax(Integer id){
        MemberModel memberModel = memberService.selectByPrimaryKey(id);
        return memberModel;
    }
    /*selectByAjax有缺点 ，当返回null的时候 json不能转就崩了所以把她放到一个容器中*/
    @ResponseBody
    @RequestMapping("/selectByAjaxBetter")
    public ModelMap selectByAjaxBetter(Integer id,ModelMap modelMap){
        MemberModel memberModel = memberService.selectByPrimaryKey(id);
        modelMap.put("member",memberModel);
        return modelMap;
    }

    @ResponseBody
    @RequestMapping("/deleteByPrimaryKey")
    public int deleteByPrimaryKey(Integer id){
        int num = memberService.deleteByPrimaryKey(id);
        return num;
    }

    @ResponseBody
    @RequestMapping("/insert")
    public int insert(MemberModel record){
        int num = memberService.insert(record);
        return num;
    }
    @RequestMapping("/selectMembers")
    public ModelAndView selectMembers(MemberModel member){
        ModelAndView modelAndView = new ModelAndView();
        List<MemberModel> list=memberService.selectMembers(member);
        modelAndView.addObject("members",list);
        modelAndView.setViewName("result");
        return modelAndView;
    }

    @RequestMapping("/selectByIds")
    public ModelAndView selectByIds(String[] id){
        ModelAndView modelAndView = new ModelAndView();
        List<MemberModel> list = memberService.selectByIds(id);
        modelAndView.addObject("members",list);
        modelAndView.setViewName("result");
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping("/selectByIdsAjax")
    public ModelMap selectByIdsAjax(@RequestParam("id[]") String[] id){
        ModelMap modelMap = new ModelMap();
        List<MemberModel> list = memberService.selectByIds(id);
        modelMap.put("member",list);
        return modelMap;
    }
}
