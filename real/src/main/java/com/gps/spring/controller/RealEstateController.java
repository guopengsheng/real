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
    @RequestMapping("page")
    public String page(Integer type,String likename,Model model,Integer pageNum,Integer pageSize){
        Integer type1 =0;
        if (type!=null){
            type1 = type;
            model.addAttribute("type",type1);
        }
        String likename1 ="";
        if (likename!=null){
            likename1 = likename;
            model.addAttribute("likename",likename1);
        }
        Integer pageNum1 =1;
        if (pageNum!=null){
            pageNum1 = pageNum;
        }
        Integer pageSize1 = 3;
        if (pageSize!=null){
            pageSize1 = pageSize;
        }
        PageInfo<RealEstate> pageInfo = realEstateService.selectAll(type1, likename1, pageNum1, pageSize1);
        if (pageInfo.getList()==null || pageInfo.getList().size()<=0){
            model.addAttribute("msg","对不起，没有符合条件的查询");
        }
        model.addAttribute("pageInfo",pageInfo);
        return "page";
    }
}
