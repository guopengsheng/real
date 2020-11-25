package com.gps.spring.service;

import com.github.pagehelper.PageInfo;
import com.gps.spring.pojo.User;
import com.gps.spring.pojo.UserExample;

import java.util.List;

public interface UserService {
    List<User> login(String cardId);
    Boolean register(User record);
}
