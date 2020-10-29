package com.ssm.service;

import com.ssm.domain.Permission;
import com.ssm.domain.Role;

import java.util.List;

public interface IRoleService {

    public List<Role> findAll(Integer page, Integer size) throws Exception;

    public Role findById(Integer id) throws Exception;

    public void save(Role role) throws Exception;

    public List<Permission> findRoleUnExistPermissionByRoleId(Integer roleId) throws Exception;

    public void saveRoleUnExistPermission(Integer roleId, Integer[] permissionIds) throws Exception;
}
