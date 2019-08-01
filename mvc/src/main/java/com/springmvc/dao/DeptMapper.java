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

    //鏂板
    @Insert("insert into dept(deptno,dname,loc)values(#{deptno},#{dname},#{loc})")
    int add(Dept dept);
    //淇敼
    @Update("update dept set dname=#{dname},loc=#{loc} where deptno=#{deptno}")
    int update(Dept dept);

    //鍒犻櫎
    @Delete("delete from dept where deptno=#{deptno}")
    int delete(Integer deptno);

    //鏌ヨ鎵�鏈�
    @Select("select deptno,dname,loc from dept")
    List<Dept> find();
    //鏍规嵁id鏌ヨ
    @Select("select deptno,dname,loc from dept where deptno=#{deptno}")
    Dept findById(Integer deptno);

}
