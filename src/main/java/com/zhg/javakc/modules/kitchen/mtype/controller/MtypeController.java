package com.zhg.javakc.modules.kitchen.mtype.controller;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.kitchen.mtype.entity.MtypeEntity;
import com.zhg.javakc.modules.kitchen.mtype.service.MtypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value="mtype")
public class MtypeController {

    @Autowired
    private MtypeService mtypeService;

    @RequestMapping(value = "queryAll")
    @ResponseBody
    public List<Map<String,Object>> queryAll(){
        List<Map<String,Object>> list =mtypeService.queryAll();
        return list;
    }

    @RequestMapping("create")
    public String create(MtypeEntity mtypeEntity){
        mtypeService.create(mtypeEntity);
        return "kitchen/mtype/list";
    }

    @RequestMapping("view")
    public String view(String typeId, String parentName,ModelMap modelMap){
        modelMap.put("parentName",parentName);
        modelMap.put("entity",mtypeService.get(typeId));

        return "kitchen/mtype/update";
    }


    @RequestMapping("update")
    public String update(MtypeEntity mtypeEntity){
//        mtypeEntity.setTypeId(CommonUtil.uuid());
       mtypeService.update(mtypeEntity);
        return "kitchen/mtype/list";
    }

    @RequestMapping("delete")
    public String delete(String typeId){
//        mtypeEntity.setTypeId(CommonUtil.uuid());
        mtypeService.delete(typeId);
        return "kitchen/mtype/list";
    }

}
