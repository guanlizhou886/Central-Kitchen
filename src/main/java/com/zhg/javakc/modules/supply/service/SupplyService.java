package com.zhg.javakc.modules.supply.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.supply.dao.SupplyDao;
import com.zhg.javakc.modules.supply.entity.SupplyEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 王策
 * @date 2019/11/22 17:13
 */
@Service
public class SupplyService extends BaseService<SupplyDao, SupplyEntity> {

    @Autowired
    SupplyDao supplyDao;


    public Page<SupplyEntity> queryTest(SupplyEntity supplyEntity, Page<SupplyEntity> page){
        //设置分页参数，才会被Mybatis分页插件所识别，拦截SQL，在其SQL的前后加入分页SQL语句
        supplyEntity.setPage(page);
        //根据分页与查询条件进行测试数据的查询
        List<SupplyEntity> supplyList=supplyDao.findList(supplyEntity);
        //将查询数据设置到分页类的List集合中，一起返回
        page.setList(supplyList);
        return page;
    }



}
