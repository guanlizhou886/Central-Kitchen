package com.zhg.javakc.modules.kitchen.mtype.service;

import com.zhg.javakc.base.service.BaseService;

import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.kitchen.mtype.dao.MtypeDao;
import com.zhg.javakc.modules.kitchen.mtype.entity.MtypeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;
import java.util.Map;

@Service
@Transactional(readOnly = true)
public class MtypeService extends BaseService<MtypeDao,MtypeEntity> {
    @Autowired
    private MtypeDao mtypeDao;

    /**
     * 查询所有数据
     * @return list<MtypeEntity>
     */
    public List<Map<String,Object>> queryAll(){

        List<Map<String,Object>> list=mtypeDao.queryAllList();

        return list;
    }

    /**
     * 增
     * @param mtypeEntity
     */
    @Transactional(readOnly = false)
    public void create(MtypeEntity mtypeEntity){
        mtypeEntity.setTypeId(CommonUtil.uuid());
        int i=mtypeDao.insert(mtypeEntity);

    }

    /**
     * 查询一条数据，带有自己和父类的名字
     * @param typeId
     * @return
     */
    public MtypeEntity get(String typeId){
        MtypeEntity mtypeEntity= mtypeDao.get(typeId);
        return mtypeEntity;
    }
    @Transactional(readOnly = false)
    public void delete(String typeId){
//        得到子结点
       List<Map<String,Object>> list=mtypeDao.getChild(typeId);
       if(list!=null && list.size()>0){
           for (Map<String,Object> map: list){
                delete(map.get("id").toString());
           }
//           删除最终的父类
           mtypeDao.delete(typeId);
       }else {
//           删除没有子节点的父节点
           mtypeDao.delete(typeId);
       }


    }

}
