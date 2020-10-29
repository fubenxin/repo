package com.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.ssm.domain.Role;
import com.ssm.domain.User;
import com.ssm.mapper.IUserMapper;
import com.ssm.service.IUserService;
import com.ssm.utils.BCryptPasswordEncoderUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements IUserService {

    @Autowired
    private IUserMapper userMapper;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<User> findAll(Integer page, Integer size) throws Exception {

        PageHelper.startPage(page, size);
        return userMapper.findAll();
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void save(User user) throws Exception {

        user.setPassword(BCryptPasswordEncoderUtils.encodePassword(user.getPassword()));
        userMapper.save(user);
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public User findById(Integer id) throws Exception {

        return userMapper.findById(id);
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Role> findUserUnExistRoleByUserId(Integer userId) throws Exception {

        return userMapper.findUserUnExistRoleByUserId(userId);
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void saveUserUnExistRole(Integer userId, Integer[] roleIds) throws Exception {

        for(int roleId : roleIds){
            userMapper.saveUserUnExistRole(userId, roleId);
        }
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {

        User userInfo = null;
        try {
            userInfo = userMapper.findByUsername(s);
        } catch (Exception e) {
            e.printStackTrace();
        }
        org.springframework.security.core.userdetails.User user =
                new org.springframework.security.core.userdetails.User(
                        userInfo.getUsername(),
                        userInfo.getPassword(),
                        userInfo.getStatus() == 0 ? false : true,
                        true,
                        true,
                        true,
                        getAuthority(userInfo.getRoles())
                );
        return user;
    }

    private List<SimpleGrantedAuthority> getAuthority(List<Role> roles){

        List<SimpleGrantedAuthority> list = new ArrayList<>();
        for(Role role : roles){
            list.add(new SimpleGrantedAuthority("ROLE_" + role.getRoleName()));
        }
        return list;
    }
}
