package com.gps.spring.service;

import com.github.pagehelper.PageInfo;
import com.gps.spring.pojo.RealEstate;
import com.gps.spring.pojo.RealEstateExample;

public interface RealEstateService {
    PageInfo<RealEstate> selectAll(Integer type, String likename, Integer pageNum, Integer pageSize);
}
