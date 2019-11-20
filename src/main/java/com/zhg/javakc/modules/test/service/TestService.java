package com.zhg.javakc.modules.test.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.test.dao.TestDao;
import com.zhg.javakc.modules.test.entity.TestEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 男神利
 * @date 2019/11/19 12:31
 */

@Service
public class TestService extends BaseService<TestDao, TestEntity> {

    @Autowired
    private TestDao testdao;

    public Page<TestEntity>  queryTest(TestEntity entity,Page<TestEntity> page){
//        ##设置entity分页参数，这样mybatis分页插件才会拦截，在其sql加入分页sql
        entity.setPage(page);
        //##将分页数据和查询条间一起传入
        List<TestEntity>  list=testdao.findList(entity);
        //将查询结果放入page中返回
        page.setList(list);
        return  page;

    }





}
