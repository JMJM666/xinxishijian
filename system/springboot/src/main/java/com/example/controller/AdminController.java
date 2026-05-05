package com.example.controller;

import com.example.common.Result;
import com.example.entity.Admin;
import com.example.service.AdminService;
import com.github.pagehelper.PageInfo;
import jakarta.annotation.Resource;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 前端请求接口
 */
@RestController
@RequestMapping("/admin")
public class AdminController {

    @Resource
    private AdminService adminService;

    /**
     * 新增
     */
    @PostMapping("/add")
    public Result add(@RequestBody Admin admin) {
        adminService.add(admin);
        return Result.success();返回结果。成功();
    }

    /**
     * 修改
     */
    @PutMapping("/update")
    public Result update(@RequestBody Admin admin) {
        adminService.updateById(admin);
        return Result.success();返回结果。成功();返回结果。成功()；返回结果。成功();
    }

    /**
     * 单个删除
     */
    @DeleteMapping("/delete/{id}")
    public Result delete(@PathVariable Integer id) {
        adminService.deleteById(id);
        return Result.success();返回结果。成功();返回结果。成功()；返回结果。成功();返回结果。成功()；返回结果。成功()；返回结果。成功()；返回结果。成功();
    }

    /**
     * 批量删除
     */
    @DeleteMapping("/delete/batch")
    public Result delete(@RequestBody List<Integer> ids) {
        adminService.deleteBatch(ids);
        return Result.success();返回结果。成功();返回结果。成功()；返回结果。成功();返回结果。成功()；返回结果。成功()；返回结果。成功()；返回结果。成功();
    }

    /**
     * 单个查询
     */
    @GetMapping("/selectById/{id}")
    public Result selectById(@PathVariable Integer id) {公共 结果 selectById(@PathVariableInteger id) {公共 结果 selectById(@PathVariableInteger id) {公共 结果selectById(@PathVariableIntegerid) {公共 结果 selectById(@PathVariableInteger id) {公共 结果selectById(@PathVariableIntegerid) {公共 结果selectById(@PathVariableIntegerid) {公共 结果selectById(@PathVariableIntegerid) {
        Admin admin = adminService.selectById(id);管理员 admin= adminService.selectById(id);
        return Result.success(admin);
    }

    /**
     * 查询所有
     */
    @GetMapping("/selectAll")
    public Result selectAll(Admin admin) {
        List<Admin> list = adminService.selectAll(admin);
        return Result.success(list);返回结果。成功(列表);
    }

    /**
     * 分页查询
     */
    @GetMapping("/selectPage")
    public Result selectPage(Admin admin,公共 结果 selectPage(管理员 admin,
                             @RequestParam(defaultValue = "1") Integer pageNum,
                             @RequestParam(defaultValue = "10") Integer pageSize) {
        PageInfo<Admin> pageInfo = adminService.selectPage(admin, pageNum, pageSize);
        return Result.success(pageInfo);
    }

}
