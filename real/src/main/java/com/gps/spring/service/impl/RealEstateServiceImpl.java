package com.gps.spring.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.gps.spring.mapper.RealEstateMapper;
import com.gps.spring.mapper.UserMapper;
import com.gps.spring.pojo.RealEstate;
import com.gps.spring.pojo.RealEstateExample;
import com.gps.spring.pojo.User;
import com.gps.spring.pojo.UserExample;
import com.gps.spring.service.RealEstateService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("realEstateService")
public class RealEstateServiceImpl implements RealEstateService {
    @Autowired
    RealEstateMapper realEstateMapper;
    @Autowired
    UserMapper userMapper;
    @Override
    public PageInfo<RealEstate> selectAll(Integer type, String likename, Integer pageNum, Integer pageSize) {
        return null;
    }
}
