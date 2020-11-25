package com.gps.spring.controller;

import com.github.pagehelper.PageInfo;
import com.gps.spring.pojo.RealEstate;
import com.gps.spring.pojo.User;
import com.gps.spring.service.RealEstateService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class RealEstateController {
    @Autowired
    RealEstateService realEstateService;

}
