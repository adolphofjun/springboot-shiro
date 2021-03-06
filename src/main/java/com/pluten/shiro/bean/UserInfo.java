package com.pluten.shiro.bean;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author huitu123
 * @since 2018-01-23
 */
public class UserInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    private String cGuid;
    private String cName;
    private String password;

    public String getcGuid() {
        return cGuid;
    }

    public void setcGuid(String cGuid) {
        this.cGuid = cGuid;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
