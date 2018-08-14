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
public class SysRole implements Serializable {

    private static final long serialVersionUID = 1L;

    private String cGuid;
    private String cName;

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
}
