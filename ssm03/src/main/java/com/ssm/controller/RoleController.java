package com.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.ssm.domain.Permission;
import com.ssm.domain.Role;
import com.ssm.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private IRoleService roleService;

    @RequestMapping("/list")
    public ModelAndView list(
            @RequestParam(name = "page", required = true, defaultValue = "1")Integer page,
            @RequestParam(name = "size", required = true, defaultValue = "5")Integer size
    )throws Exception{

        ModelAndView mv = new ModelAndView();
        List<Role> roleList = roleService.findAll(page, size);
        PageInfo pageInfo = new PageInfo(roleList);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("/role/list");
        return mv;
    }

    @RequestMapping("/add")
    public String add(Role role) throws Exception{

        roleService.save(role);
        return "redirect:list";
    }

    @RequestMapping("/detail")
    public ModelAndView detail(Integer id) throws Exception{

        ModelAndView mv = new ModelAndView();
        Role role = roleService.findById(id);
        mv.addObject("role", role);
        mv.setViewName("/role/detail");
        return mv;
    }

    @RequestMapping("/addPermission")
    public ModelAndView addPermission(Integer id) throws Exception{

        ModelAndView mv = new ModelAndView();
        Role role = roleService.findById(id);
        mv.addObject("role", role);
        List<Permission> permissionList = roleService.findRoleUnExistPermissionByRoleId(id);
        mv.addObject("permissionList", permissionList);
        mv.setViewName("/role/addPermission");
        return mv;
    }

    @RequestMapping("/addPermissionSave")
    public String addPermissionSave(Integer roleId, Integer[] ids) throws Exception{

        roleService.saveRoleUnExistPermission(roleId, ids);
        return "redirect:list";
    }
}
