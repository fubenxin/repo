package com.ssm.service.impl;

import com.ssm.dao.UserDao;
import com.ssm.domain.User;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 用户service实现类
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<User> findAll() {

        System.out.println("业务层findAll 方法执行...");
        //return null;
        return userDao.findAll();
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void saveUser(User user) {

        System.out.println("业务层saveUser 方法执行...");
        userDao.saveUser(user);
    }
}
