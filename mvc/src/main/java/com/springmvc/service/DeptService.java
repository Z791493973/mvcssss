package com.springmvc.service;

import com.springmvc.dao.DeptMapper;
import com.springmvc.pojo.Dept;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service("deptService")
@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true )
public class DeptService {
    @Resource(name="deptMapper")
    private DeptMapper deptMapper;

    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,rollbackFor = Exception.class)
    public int add(Dept dept){
        return deptMapper.add(dept);
    }
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,rollbackFor = Exception.class)
    public int update(Dept dept){
        return deptMapper.update(dept);
    }
    @Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,rollbackFor = Exception.class)
    public int delete(Integer deptno){
        return deptMapper.delete(deptno);
    }
    public Dept findById(Integer deptno){
        return deptMapper.findById(deptno);
    }
    public List<Dept> find(){
        return deptMapper.find();
    }
}
