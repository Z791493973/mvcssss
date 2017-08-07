package com.springmvc.dao;

import com.springmvc.pojo.Dept;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("deptMapper")
public interface DeptMapper {

    //新增
    @Insert("insert into dept(deptno,dname,loc)values(#{deptno},#{dname},#{loc})")
    int add(Dept dept);
    //修改
    @Update("update dept set dname=#{dname},loc=#{loc} where deptno=#{deptno}")
    int update(Dept dept);

    //删除
    @Delete("delete from dept where deptno=#{deptno}")
    int delete(Integer deptno);

    //查询所有
    @Select("select deptno,dname,loc from dept")
    List<Dept> find();
    //根据id查询
    @Select("select deptno,dname,loc from dept where deptno=#{deptno}")
    Dept findById(Integer deptno);

}
