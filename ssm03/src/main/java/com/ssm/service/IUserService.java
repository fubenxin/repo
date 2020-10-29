package com.ssm.service;

import com.ssm.domain.Role;
import com.ssm.domain.User;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface IUserService extends UserDetailsService {

    public List<User> findAll(Integer page, Integer size) throws Exception;

    public void save(User user) throws Exception;

    public User findById(Integer id) throws Exception;

    public List<Role> findUserUnExistRoleByUserId(Integer userId) throws Exception;

    public void saveUserUnExistRole(Integer userId, Integer[] roleIds) throws Exception;
}
