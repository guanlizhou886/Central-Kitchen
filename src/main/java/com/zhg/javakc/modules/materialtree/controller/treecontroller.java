package com.zhg.javakc.modules.materialtree.controller;

import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.materialtree.entity.treeentity;
import com.zhg.javakc.modules.materialtree.service.treeservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("tree")
public class treecontroller {
    @Autowired
    private treeservice service;
    @RequestMapping("query")
    @ResponseBody
    public List<Map<String,Object>> query(){
        List<Map<String,Object>> list = service.query();
        System.out.println(list);
      return list;

    }
    @RequestMapping("save")
    public String save(treeentity entity){
        entity.setOrgid(CommonUtil.uuid());
        service.save(entity);
        return "materialtree/list";
    }
}
