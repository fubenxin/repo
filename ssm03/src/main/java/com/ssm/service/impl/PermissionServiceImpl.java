package com.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.ssm.domain.Permission;
import com.ssm.mapper.IPermissionMapper;
import com.ssm.service.IPermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PermissionServiceImpl implements IPermissionService {

    @Autowired
    private IPermissionMapper permissionMapper;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Permission> findAll(Integer page, Integer size) throws Exception {

        PageHelper.startPage(page, size);
        return permissionMapper.findAll();
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public Permission findById(Integer id) throws Exception {

        return permissionMapper.findById(id);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void save(Permission permission) throws Exception {

        permissionMapper.save(permission);
    }
}
