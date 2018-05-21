package cn.com.zhirun.ssm0514.controller;

import cn.com.zhirun.ssm0514.model.UserModel;
import cn.com.zhirun.ssm0514.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class UserController {
    @Autowired
    IUserService userService;

/*检查数据库是否有用户名*/
    @ResponseBody
    @RequestMapping("/checkloginRegUser")
    public ModelMap checkloginUser(UserModel userModel){
        ModelMap modelMap = new ModelMap();
        UserModel username = userService.checkloginUser(userModel.getUser());
        modelMap.put("user",username);
        return modelMap;
    }

    /*检查登陆密码是否正确*/
    @ResponseBody
    @RequestMapping("/checkPwdisexist")
    public ModelMap checkPwdisexist(UserModel userModel, HttpServletRequest req, HttpServletResponse resp){
        ModelMap modelMap = new ModelMap();
        int num = userService.checkPwdisexist(userModel);
        modelMap.put("num",num);
        if(num>0){
            req.getSession().setAttribute("user2",userModel.getUser());
        }
        return modelMap;
    }

    /*注册时向数据库插入数据*/
    @RequestMapping("/insertUser")
    @ResponseBody
    public ModelMap insertUser(UserModel userModel){
        ModelMap modelMap = new ModelMap();
        int num = userService.insertUser(userModel);
        modelMap.put("num",num);
        return modelMap;
    }
}
