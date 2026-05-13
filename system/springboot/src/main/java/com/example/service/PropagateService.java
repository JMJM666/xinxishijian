package com.example.service;

import cn.hutool.core.date.DateUtil;
import com.example.common.enums.RoleEnum;
import com.example.entity.Account;
import com.example.entity.Propagate;
import com.example.mapper.PropagateMapper;
import com.example.utils.TokenUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 健康宣传信息业务层方法
 */
@Service
public class PropagateService {

    @Resource
    private PropagateMapper propagateMapper;

    public void add(Propagate propagate) {
        Account currentUser = TokenUtils.getCurrentUser();
        propagate.setTime(DateUtil.now());
        propagate.setDoctorId(currentUser.getId());
        propagate.setNum(0);
        propagateMapper.insert(propagate);
    }

    public void updateById(Propagate propagate) {
        propagateMapper.updateById(propagate);
    }

    public void deleteById(Integer id) {
        propagateMapper.deleteById(id);
    }

    public void deleteBatch(List<Integer> ids) {
        for (Integer id : ids) {
            propagateMapper.deleteById(id);
        }
    }

    public Propagate selectById(Integer id) {
        return propagateMapper.selectById(id);
    }

    public List<Propagate> selectAll(Propagate propagate) {
        return propagateMapper.selectAll(propagate);
    }

    public PageInfo<Propagate> selectPage(Propagate propagate, Integer pageNum, Integer pageSize) {
        Account currentUser = TokenUtils.getCurrentUser();
        if(RoleEnum.DOCTOR.name().equals(currentUser.getRole())){
            propagate.setDoctorId(currentUser.getId());
        }
        PageHelper.startPage(pageNum, pageSize);
        List<Propagate> list = propagateMapper.selectAll(propagate);
        return PageInfo.of(list);
    }

}
