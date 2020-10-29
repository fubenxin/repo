package com.ssm.service;

import com.ssm.domain.Permission;

import java.util.List;

public interface IPermissionService {

    public List<Permission> findAll(Integer page, Integer size) throws Exception;

    public Permission findById(Integer id) throws Exception;

    public void save(Permission permission) throws Exception;
}
