package com.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.ssm.domain.SysLog;
import com.ssm.mapper.ISysLogMapper;
import com.ssm.service.ISysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class SysLogServiceImpl implements ISysLogService {

    @Autowired
    private ISysLogMapper sysLogMapper;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<SysLog> findAll(Integer page, Integer size) throws Exception {

        PageHelper.startPage(page, size);
        return sysLogMapper.findAll();
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public SysLog findById(Integer id) throws Exception {

        return sysLogMapper.findById(id);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void save(SysLog sysLog) throws Exception {

        sysLogMapper.save(sysLog);
    }
}
