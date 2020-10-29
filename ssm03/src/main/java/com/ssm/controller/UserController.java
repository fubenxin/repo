package com.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.ssm.domain.Role;
import com.ssm.domain.User;
import com.ssm.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/list")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_USER', 'ROLE_GUEST')")
    public ModelAndView list(
            @RequestParam(name = "page", required = true, defaultValue = "1") Integer page,
            @RequestParam(name = "size", required = true, defaultValue = "5") Integer size
    ) throws Exception{

        ModelAndView mv = new ModelAndView();
        List<User> userList = userService.findAll(page, size);
        PageInfo pageInfo = new PageInfo(userList);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("/user/list");
        return mv;
    }

    @RequestMapping("/add")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    public String add(User user) throws Exception{

        userService.save(user);
        return "redirect:list";
    }

    @RequestMapping("/detail")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_USER')")
    public ModelAndView detail(Integer id) throws Exception{

        ModelAndView mv = new ModelAndView();
        User user = userService.findById(id);
        mv.addObject("user", user);
        mv.setViewName("/user/detail");
        return mv;
    }

    @RequestMapping("/addRole")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    public ModelAndView addRole(Integer id) throws Exception{

        ModelAndView mv = new ModelAndView();
        User user = userService.findById(id);
        mv.addObject("user", user);
        List<Role> roleList = userService.findUserUnExistRoleByUserId(id);
        mv.addObject("roleList", roleList);
        mv.setViewName("/user/addRole");
        return mv;
    }

    @RequestMapping("/addRoleSave")
    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    public String addRoleSave(Integer userId, Integer[] ids) throws Exception{

        userService.saveUserUnExistRole(userId, ids);
        return "redirect:list";
    }
}
