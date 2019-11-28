package com.zhg.javakc.modules.material.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;

import com.zhg.javakc.modules.material.dao.daomaterial;
import com.zhg.javakc.modules.material.entity.materialentity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service
@RequestMapping("material")
public class materialservice extends BaseService<daomaterial, materialentity> {
 @Autowired
 private daomaterial dao;
    public Page<materialentity> query(materialentity entity, Page<materialentity> page){
        entity.setPage(page);
       List<materialentity> list=dao.findList(entity);
//        System.out.println(list.get(0));
        page.setList(list);
        return page;
    }
    public List<materialentity> queryrelation(){
      return  dao.queryrelation();
    }
}
