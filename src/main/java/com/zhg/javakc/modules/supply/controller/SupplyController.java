package com.zhg.javakc.modules.supply.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.supply.entity.SupplyEntity;
import com.zhg.javakc.modules.supply.service.SupplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 王策
 * @date 2019/11/22 17:11
 */
@Controller
@RequestMapping("/supply")
public class SupplyController {

    @Autowired
    SupplyService supplyService;

    //查询
    @RequestMapping("/query")
    public ModelAndView queryTest(SupplyEntity supplyEntity,HttpServletRequest request, HttpServletResponse response){

        ModelAndView modelAndView=new ModelAndView("/supply/list");
        Page<SupplyEntity> page=supplyService.queryTest(supplyEntity,new Page<>(request,response));
        modelAndView.addObject("page",page);
        return  modelAndView;
    }

    //新增
    @RequestMapping("/insert")
    public String insert(SupplyEntity supplyEntity){
        supplyService.save(supplyEntity);
        return "redirect:query.do";
    }

    //删除
    @RequestMapping("/delete")
    public String delete(String[] ids){
        supplyService.delete(ids);
        return "redirect:query.do";
    }

    //跳转到修改界面（更新）
    @RequestMapping("/view")
    public String view(String ids, ModelMap modelMap) {
        SupplyEntity supplyEntity=supplyService.get(ids);
        modelMap.put("supplyEntity",supplyEntity);
        return "supply/update";
    }
    @RequestMapping("/update")
    public String update(SupplyEntity supplyEntity){
        supplyService.update(supplyEntity);
        return "redirect:query.do";
    }
    @RequestMapping("/www")
    public ModelAndView querybysome(SupplyEntity supplyEntity,HttpServletRequest request, HttpServletResponse response){

        ModelAndView modelAndView=new ModelAndView("supply/listrelation");
        Page<SupplyEntity> page=supplyService.queryTest(supplyEntity,new Page<>(request,response));
        modelAndView.addObject("page",page);
        return  modelAndView;
    }

}
