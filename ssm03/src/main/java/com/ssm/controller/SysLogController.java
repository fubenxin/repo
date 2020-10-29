package com.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.ssm.domain.SysLog;
import com.ssm.service.ISysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/log")
public class SysLogController {

    @Autowired
    private ISysLogService sysLogService;

    @RequestMapping("/list")
    public ModelAndView list(
            @RequestParam(name = "page", required = true, defaultValue = "1") Integer page,
            @RequestParam(name = "size", required = true, defaultValue = "5") Integer size
    ) throws Exception{

        ModelAndView mv = new ModelAndView();
        List<SysLog> sysLogList = sysLogService.findAll(page, size);
        PageInfo pageInfo = new PageInfo(sysLogList);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("/log/list");
        return mv;
    }

    @RequestMapping("/detail")
    public ModelAndView detail(Integer id) throws Exception{

        ModelAndView mv = new ModelAndView();
        SysLog sysLog = sysLogService.findById(id);
        mv.addObject("sysLog", sysLog);
        mv.setViewName("/log/detail");
        return mv;
    }

    @RequestMapping("/add")
    public String add(SysLog sysLog) throws Exception{

        sysLogService.save(sysLog);
        return "redirect:list";
    }
}
