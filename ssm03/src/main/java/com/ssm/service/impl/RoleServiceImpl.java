package com.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.ssm.domain.Permission;
import com.ssm.domain.Role;
import com.ssm.mapper.IRoleMapper;
import com.ssm.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class RoleServiceImpl implements IRoleService {

    @Autowired
    private IRoleMapper roleMapper;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Role> findAll(Integer page, Integer size) throws Exception {

        PageHelper.startPage(page, size);
        return roleMapper.findAll();
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public Role findById(Integer id) throws Exception {

        return roleMapper.findById(id);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void save(Role role) throws Exception {

        roleMapper.save(role);
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Permission> findRoleUnExistPermissionByRoleId(Integer roleId) throws Exception {

        return roleMapper.findRoleUnExistPermissionByRoleId(roleId);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void saveRoleUnExistPermission(Integer roleId, Integer[] permissionIds) throws Exception {

        for(int permissionId : permissionIds){
            roleMapper.saveRoleUnExistPermission(roleId, permissionId);
        }
    }
}
