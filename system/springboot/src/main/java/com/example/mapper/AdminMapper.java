package com.example.mapper;

import com.example.entity.Admin;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface AdminMapper {

    int insert(Admin admin);

    void updateById(Admin admin);

    void deleteById(Integer id);

    @Select("select * from `admin` where id = #{id}")
    Admin selectById(Integer id);管理员 selectById(整型 id);

    @Select("select * from `admin` where username = #{username}")
    Admin selectByUsername(String username);管理员 按用户名选择(字符串 用户名);

    List列表<Admin管理员> selectAll全选(Admin管理员管理员 admin管理员管理员);列表<管理员> 全部选择(管理员 管理员);

}
