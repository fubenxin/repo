package com.ssm.service;

import com.ssm.domain.SysLog;

import java.util.List;

public interface ISysLogService {

    public List<SysLog> findAll(Integer page, Integer size) throws Exception;

    public SysLog findById(Integer id) throws Exception;

    public void save(SysLog sysLog) throws Exception;
}
