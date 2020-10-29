package com.ssm.mapper;

import com.ssm.domain.Permission;

import java.util.List;

public interface IPermissionMapper {

    public List<Permission> findAll() throws Exception;

    public Permission findById(Integer id) throws Exception;

    public void save(Permission permission) throws Exception;
}
