package cn.com.zhirun.ssm0514.controller;

import cn.com.zhirun.ssm0514.model.BusinessModel;
import cn.com.zhirun.ssm0514.model.Pages;
import cn.com.zhirun.ssm0514.service.IBusinessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class BusinessController {
    @Autowired
    IBusinessService iBusinessService;
    /*添加商家*/
    @RequestMapping("/insertBusiness")
    @ResponseBody
    public ModelMap insertBusiness(BusinessModel businessModel){
        ModelMap modelMap = new ModelMap();
        int num = iBusinessService.insertBusiness(businessModel);
        modelMap.put("num",num);
        return modelMap;
    }
    /*查询*/
    @RequestMapping("/selectByBusiness")
    @ResponseBody
    public ModelMap selectByBusiness(BusinessModel businessModel,HttpServletRequest req){
        ModelMap modelMap = new ModelMap();
        List<BusinessModel> bm = iBusinessService.selectByBusiness(businessModel);
        int total = iBusinessService.selectTotal(businessModel);
        modelMap.put("business",bm);
        modelMap.put("total",total);
        req.getSession().setAttribute("business",businessModel);
        return modelMap;
    }
    /*点击其他按钮的时候查询*/
    @RequestMapping("/selectOtherBtn")
    @ResponseBody
    public ModelMap selectOtherBtn(HttpServletRequest req, Pages pages){
        ModelMap modelMap = new ModelMap();
        BusinessModel businessOther = (BusinessModel) req.getSession().getAttribute("business");
        List<BusinessModel> bmOther = iBusinessService.selectOtherBtn(businessOther,pages);
        modelMap.put("business",bmOther);
        return modelMap;
    }
    /*添加商家时，根据名字拦截*/
    @RequestMapping("/checkaddBusiness")
    @ResponseBody
    public ModelMap checkaddBusiness(String businessname){
        ModelMap modelMap = new ModelMap();
        int num = iBusinessService.checkaddBusiness(businessname);
        modelMap.put("num",num);
        return modelMap;
    }
    /*修改页面按保存按钮*/
    @RequestMapping("/updateModifyBusiness")
    @ResponseBody
    public ModelMap updateModifyBusiness(BusinessModel businessModel,HttpServletRequest req){
        ModelMap modelMap = new ModelMap();
        int num = iBusinessService.updateModifyBusiness(businessModel);
        modelMap.put("num",num);
        if(num!=0){
            req.getSession().setAttribute("business1",businessModel);
        }
        return modelMap;
    }

    /*删除并更新*/
    @RequestMapping("/updateDeleteBusiness")
    @ResponseBody
    public ModelMap updateDeleteBusiness(@RequestParam("businessid[]") String[] businessid,HttpServletRequest req){
        ModelMap modelMap = new ModelMap();
        int num = iBusinessService.updateDeleteBusiness(businessid);
        BusinessModel businessOther = (BusinessModel) req.getSession().getAttribute("business");
        List<BusinessModel> bm = iBusinessService.selectByBusiness(businessOther);
        modelMap.put("business",bm);
        return modelMap;
    }

    /*退出登录*/
    /*删除并更新*/
    @RequestMapping("/quitLogin")
    @ResponseBody
    public ModelMap quitLogin(HttpServletRequest req){
        ModelMap modelMap = new ModelMap();
        req.getSession().removeAttribute("user2");
        return modelMap;
    }
}
