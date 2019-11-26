package com.zhg.javakc.modules.materialtree.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.materialtree.entity.treeentity;

import java.util.List;
import java.util.Map;

public interface treedao extends BaseDao<treeentity> {
    public List<Map<String,Object>> query();
}
