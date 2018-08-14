package com.pluten.shiro.service;


import com.pluten.shiro.bean.SysPermission;
import com.pluten.shiro.bean.SysRole;
import com.pluten.shiro.bean.UserInfo;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author huitu123
 * @since 2018-01-23
 */
public interface UserInfoService {

    List<SysRole> selectRoleByUser(UserInfo userInfo);

    List<SysPermission> selectPermByUser(UserInfo userInfo);

    UserInfo selectOne(String username);
}
