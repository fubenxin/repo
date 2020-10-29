package com.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.ssm.domain.Permission;
import com.ssm.service.IPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/permission")
public class PermissionController {

    @Autowired
    private IPermissionService permissionService;

    @RequestMapping("/list")
    public ModelAndView list(
            @RequestParam(name = "page", required = true, defaultValue = "1") Integer page,
            @RequestParam(name = "size", required = true, defaultValue = "5") Integer size
    ) throws Exception{

        ModelAndView mv = new ModelAndView();
        List<Permission> permissionList = permissionService.findAll(page, size);
        PageInfo pageInfo = new PageInfo(permissionList);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("/permission/list");
        return mv;
    }

    @RequestMapping("/detail")
    public ModelAndView detail(Integer id) throws Exception{

        ModelAndView mv = new ModelAndView();
        Permission permission = permissionService.findById(id);
        mv.addObject("permission", permission);
        mv.setViewName("/permission/detail");
        return mv;
    }

    @RequestMapping("/add")
    public String add(Permission permission) throws Exception{

        permissionService.save(permission);
        return "redirect:list";
    }
}
