package com.zhg.javakc.modules.material.controller;

import com.zhg.javakc.base.entity.BaseEntity;
import com.zhg.javakc.base.page.Page;

//import com.zhg.javakc.modules.material.service.materialservice;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.material.entity.materialentity;
import com.zhg.javakc.modules.material.service.materialservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("material")
public class materialcontroller{
    @Autowired
    private materialservice service;
    @RequestMapping("query")
    public ModelAndView query(materialentity entity, HttpServletRequest request, HttpServletResponse response){

        ModelAndView modelAndView=new ModelAndView("/material/list");
       Page<materialentity> page= service.query(entity,new Page<>(request,response));
       modelAndView.addObject("page",page);
        return modelAndView;
    }
    @RequestMapping("save")
    public String save(materialentity entity,@RequestParam("attachment1") CommonsMultipartFile attachment1){
        try {
            String path = ResourceUtils.getURL("classpath:").getPath();
            String originalFilename = attachment1.getOriginalFilename();
            String newName = UUID.randomUUID() + originalFilename;
            File attachmentFile = new File(path+ newName);
            attachment1.transferTo(attachmentFile);
            byte[] att= FileCopyUtils.copyToByteArray(attachmentFile);
            entity.setAttachment(att);

        entity.setMATERIAL_ID(CommonUtil.uuid());
        entity.setCreateDate(new Date());
        System.out.println(entity.getMATERIAL_ID());
        service.save(entity);

        }catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:query.do";
    }


    @RequestMapping("querybyid")
    public String update(String ids, ModelMap model){
        System.out.println(ids);
      materialentity entity=  service.get(ids);
        model.put("entity",entity);
        return "material/update";
    }
    @RequestMapping("update")
    public String update(materialentity entity){

        entity.setUpdateDate(new Date());
        service.update(entity);
        return "redirect:query.do";
    }
    @RequestMapping("delete")
    public String delete(String[] ids ){
        service.delete(ids);
        return "redirect:query.do";
    }
@RequestMapping("queryrelation")
public String queryqueryrelation(materialentity entity,ModelMap map){
List<materialentity> list=service.queryrelation();
map.put("list",list);
    System.out.println(service.queryrelation());
    return "material/relation";
}
}
