package com.zhg.javakc.modules.kitchen.mtype.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.kitchen.mtype.entity.MtypeEntity;

import java.util.List;
import java.util.Map;

public interface MtypeDao extends BaseDao<MtypeEntity> {
    /**
     * 查询所有数据，以json格式返回给页面
     * @return
     */
    public List<Map<String,Object>> queryAllList();

    public List<Map<String,Object>> getChild(String typeId);
}
