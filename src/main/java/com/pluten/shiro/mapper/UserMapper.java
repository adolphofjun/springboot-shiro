package com.pluten.shiro.mapper;

import com.pluten.shiro.bean.SysPermission;
import com.pluten.shiro.bean.SysRole;
import com.pluten.shiro.bean.UserInfo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {

    List<SysRole> selectRoleByUser(String userName);

    List<SysPermission> selectPermByUser(String role);

    UserInfo selectOne(String userName);
}
