package com.pluten.shiro.service.impl;

import com.pluten.shiro.bean.SysPermission;
import com.pluten.shiro.bean.SysRole;
import com.pluten.shiro.bean.UserInfo;
import com.pluten.shiro.mapper.UserMapper;
import com.pluten.shiro.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * 〈〉
 *
 * @author wangxiangjun
 * @create 2018/8/13
 * @since 1.0.0
 */
@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired private UserMapper userMapper;
    @Override
    public List<SysRole> selectRoleByUser(UserInfo userInfo) {
        return userMapper.selectRoleByUser(userInfo.getcName());
    }

    @Override
    public List<SysPermission> selectPermByUser(UserInfo userInfo) {
        return userMapper.selectPermByUser("admin");
    }

    @Override
    public UserInfo selectOne(String username) {
        return userMapper.selectOne(username);
    }
}
