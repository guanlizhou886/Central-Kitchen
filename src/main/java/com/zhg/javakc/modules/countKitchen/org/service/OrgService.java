package com.zhg.javakc.modules.countKitchen.org.service;

import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.countKitchen.org.dao.OrgDao;
import com.zhg.javakc.modules.countKitchen.org.entity.OrgEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author 男神利
 * @date 2019/11/22 16:55
 */
@Service
@Transactional(readOnly = true)
public class OrgService  extends BaseService<OrgDao, OrgEntity> {







}
