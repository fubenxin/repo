package com.ssm.mapper;

import com.ssm.domain.SysLog;

import java.util.List;

public interface ISysLogMapper {

    public List<SysLog> findAll() throws Exception;

    public SysLog findById(Integer id) throws Exception;

    public void save(SysLog sysLog) throws Exception;
}
