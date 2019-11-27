package com.zhg.javakc.modules.orgtype.dao;
import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.modules.orgtype.entity.OrgtypeEntity;
import java.util.List;
import java.util.Map;

public interface OrgtypeDao extends BaseDao<OrgtypeEntity> {

    /**
     * 查询
     * @return
     */
    public List<Map<String,Object>> queryAllType();

    /**
     * 删除前的查询
     * @return
     */
    public List<Map<String,Object>> queryById(String id);

    /**
     * 删除
     * @return
     */
    public void deleteById(String id);

}
