package com.ssm.controller;

import com.ssm.domain.User;
import com.ssm.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;

/**
 * 用户controller
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserServiceImpl userService;

    @RequestMapping("/findAll")
    public String findAll(ModelMap map){

        List<User> users = userService.findAll();
        map.put("users", users);
        return "list";
    }

    @RequestMapping("/saveUser")
    public String saveUser(){

        User user = new User();
        user.setUsername("拉拉");
        user.setBirthday(new Date());
        user.setSex("女");
        user.setAddress("北京市");
        userService.saveUser(user);
        return "success";
    }
}
