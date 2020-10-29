package com.ssm.mapper;

import com.ssm.domain.Role;
import com.ssm.domain.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IUserMapper {

    public List<User> findAll() throws Exception;

    public void save(User user) throws Exception;

    public User findById(Integer id) throws Exception;

    public List<Role> findUserUnExistRoleByUserId(Integer userId) throws Exception;

    public void saveUserUnExistRole(@Param("userId") Integer userId, @Param("roleId") Integer roleId) throws Exception;

    public User findByUsername(String username) throws Exception;
}
