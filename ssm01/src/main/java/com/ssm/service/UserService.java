package com.ssm.service;


import com.ssm.domain.User;

import java.util.List;

/**
 * 用户service接口
 */
public interface UserService {

    //查询所有用户
    public List<User> findAll();

    //添加用户
    public void saveUser(User user);
}
