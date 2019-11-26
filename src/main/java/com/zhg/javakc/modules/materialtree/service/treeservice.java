package com.zhg.javakc.modules.materialtree.service;

import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.materialtree.dao.treedao;
import com.zhg.javakc.modules.materialtree.entity.treeentity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class treeservice extends BaseService<treedao, treeentity> {
    @Autowired
    private treedao treedao;
public List<Map<String,Object>> query(){

    return dao.query();
}
}
