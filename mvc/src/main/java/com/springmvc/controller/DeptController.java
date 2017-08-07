package com.springmvc.controller;

import com.springmvc.pojo.Dept;
import com.springmvc.service.DeptService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class DeptController {
    @Resource(name="deptService")
    private DeptService deptService;
    //查询所有
    @RequestMapping("list")
    public ModelAndView find() {
        List<Dept> depts =deptService.find();
        ModelAndView mv = new ModelAndView("list");
        mv.addObject("depts",depts);
        return mv;
    }
    //删除
    @RequestMapping("remove")
    public String delete(Integer deptno){
        int count=deptService.delete(deptno);
        return "redirect:list";

    }
    //新增
    @RequestMapping("add")
    public String add(Dept dept){
        int count= deptService.add(dept);
        return "redirect:list";
    }
    //根据id查询
    @RequestMapping("findById")
    public ModelAndView findById(Integer deptno){
        Dept dept=deptService.findById(deptno);
        ModelAndView mv=new ModelAndView("edit");
        mv.addObject("dept",dept);
        return mv;
    }
    //修改
    @RequestMapping("update")
    public String update(Dept dept){
        int count=deptService.update(dept);
        return "redirect:list";
    }


}
