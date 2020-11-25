package com.gps.spring.service.impl;

import com.github.pagehelper.PageInfo;
import com.gps.spring.mapper.UserMapper;
import com.gps.spring.pojo.User;
import com.gps.spring.pojo.UserExample;
import com.gps.spring.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;
    @Override
    public List<User> login(String cardId) {
        return null;
    }

    @Override
    public Boolean register(User record) {
        return  null;
    }

}
