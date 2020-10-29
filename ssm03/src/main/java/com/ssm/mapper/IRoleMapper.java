package com.ssm.mapper;

import com.ssm.domain.Permission;
import com.ssm.domain.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IRoleMapper {

    public List<Role> findAll() throws Exception;

    public Role findById(Integer id) throws Exception;

    public void save(Role role) throws Exception;

    public List<Permission> findRoleUnExistPermissionByRoleId(Integer roleId) throws Exception;

    public void saveRoleUnExistPermission(@Param("roleId") Integer roleId, @Param("permissionId") Integer permissionId) throws Exception;
}
