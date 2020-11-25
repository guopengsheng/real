package com.gps.spring.controller;

import com.gps.spring.pojo.User;
import com.gps.spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    UserService userService;
    @RequestMapping("login")
    public String login(String cardId,String password, HttpSession session,Model model){
        List<User> users = userService.login(cardId);
        if (users!=null && users.size()>0){
            if (users.get(0).getPassword().equals(password)){
                session.setAttribute("users",users.get(0));
                return "homepage";
            }else {
                model.addAttribute("msg","密码错误");
                return "login";
            }
        }else {
            model.addAttribute("msg","用户不存在");
            return "login";
        }
    }
    @RequestMapping("register")
    public String register(String cardId,String name,String password,Model model){
        User user = new User();
        user.setCardid(cardId);
        user.setName(name);
        user.setPassword(password);
        user.setCreatetime(new Date());
        Boolean register = userService.register(user);
        if (register){
            model.addAttribute("msg","注册成功");
            return "login";
        }else {
            model.addAttribute("msg","注册失败");
            return "register";
        }
    }

}
