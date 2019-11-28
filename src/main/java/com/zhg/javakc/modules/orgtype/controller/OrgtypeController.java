package com.zhg.javakc.modules.orgtype.controller;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.orgtype.entity.OrgtypeEntity;
import com.zhg.javakc.modules.orgtype.service.OrgtypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/type")
public class OrgtypeController {

    @Autowired
    private OrgtypeService orgtypeService;


    /**
     * 查询
     * @return
     */
    @RequestMapping("queryAllType")
    @ResponseBody
    public List<Map<String,Object>> queryAllType(){
        List<Map<String,Object>> list = orgtypeService.queryAllType();
        return list;
}


    /**
     * 新增
     *
     */
    @RequestMapping("save")
    public String save(OrgtypeEntity orgtypeEntity) {
        orgtypeEntity.setId(CommonUtil.uuid());
        orgtypeService.save(orgtypeEntity);
        //注意jsp视图解析器层级目录
        return "kitchen/orgtype/list";
    }


    /**
     * 删除
     * 递归方法
     */
    @RequestMapping("delete")
    public String delete(String id){
        //删除当前查询的节点：父节点-->得到当前id下的所有子节点数据
        List<Map<String,Object>> list = orgtypeService.queryById(id);
        if(null != list && list.size()>0){
            for(Map<String,Object> map:list){
                //利用递归，删除子节点
                delete(map.get("id").toString());
            }
            orgtypeService.deleteById(id);//删除当前节点
        }else{
            //删除当前节点
            orgtypeService.deleteById(id);
        }
        return "kitchen/orgtype/list";
    }


    /**
     * 修改前查询
     */
    @RequestMapping("view")
    public String view(String id, ModelMap modelMap){
        OrgtypeEntity orgtypeEntity=orgtypeService.get(id);
        //modelMap向前台传递参数
        modelMap.put("orgtypeEntity",orgtypeEntity);
        //转到修改页面
        return "kitchen/orgtype/update";
    }

    //修改
    @RequestMapping("update")
    public String update(OrgtypeEntity orgtypeEntity){
        orgtypeService.update(orgtypeEntity);
        return "kitchen/orgtype/list";
        //return  "redirect:queryAllType.do";
    }

}
