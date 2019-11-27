package com.zhg.javakc.modules.orgtype.service;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.orgtype.dao.OrgtypeDao;
import com.zhg.javakc.modules.orgtype.entity.OrgtypeEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;

@Service
public class OrgtypeService extends BaseService<OrgtypeDao, OrgtypeEntity> {

    @Autowired
    private OrgtypeDao orgtypeDao;


    /**
     * 查询
     * @return
     */
    public List<Map<String,Object>> queryAllType(){
        return orgtypeDao.queryAllType();
    }

    /**
     * 删除前的查询
     * @return
     */
    public List<Map<String,Object>> queryById(String id){
        return orgtypeDao.queryById(id);
    }

    /**
     * 删除
     * @return
     */
    public void deleteById(String id){
        orgtypeDao.deleteById(id);
    }

}
