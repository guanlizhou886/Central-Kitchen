package com.zhg.javakc.modules.relation.controller;

import com.zhg.javakc.modules.relation.entity.relationentity;
import com.zhg.javakc.modules.relation.service.relationservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("relation")
public class relationcontroller {
    @Autowired
    private relationservice relationservice;
    @RequestMapping("save")
    public String save(relationentity relationentity){
relationservice.save(relationentity);
return "relation/create";
    }
}
