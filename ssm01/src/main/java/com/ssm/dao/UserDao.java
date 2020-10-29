package com.ssm.dao;

import com.ssm.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 用户dao接口
 */
@Repository
public interface UserDao {

    //查询所有用户
    public List<User> findAll();

    //添加用户
    public void saveUser(User user);
}
