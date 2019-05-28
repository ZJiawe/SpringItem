package cn.com.mrzheng.web.dao;

import java.util.List;

import cn.com.mrzheng.entity.Dept;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DeptDao
{
    public boolean addDept(Dept dept);

    public Dept findById(Long id);

    public List<Dept> findAll();
}
