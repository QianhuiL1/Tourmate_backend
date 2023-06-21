package com.travelers.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 旅行家系统用户模块对象 user
 * 
 * @author pinanoria
 * @date 2023-06-21
 */
public class TravelersUser extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 用户ID */
    private Long UserID;

    /** 用户名 */
    @Excel(name = "用户名")
    private String Username;

    /** 性别 */
    @Excel(name = "性别")
    private String Gender;

    /** 年龄 */
    @Excel(name = "年龄")
    private Long Age;

    /** 地址 */
    @Excel(name = "地址")
    private String Address;

    /** 密码 */
    @Excel(name = "密码")
    private String Password;

    /** 注册时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "注册时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date RegistrationTime;

    public void setUserID(Long UserID) 
    {
        this.UserID = UserID;
    }

    public Long getUserID() 
    {
        return UserID;
    }
    public void setUsername(String Username) 
    {
        this.Username = Username;
    }

    public String getUsername() 
    {
        return Username;
    }
    public void setGender(String Gender) 
    {
        this.Gender = Gender;
    }

    public String getGender() 
    {
        return Gender;
    }
    public void setAge(Long Age) 
    {
        this.Age = Age;
    }

    public Long getAge() 
    {
        return Age;
    }
    public void setAddress(String Address) 
    {
        this.Address = Address;
    }

    public String getAddress() 
    {
        return Address;
    }
    public void setPassword(String Password) 
    {
        this.Password = Password;
    }

    public String getPassword() 
    {
        return Password;
    }
    public void setRegistrationTime(Date RegistrationTime) 
    {
        this.RegistrationTime = RegistrationTime;
    }

    public Date getRegistrationTime() 
    {
        return RegistrationTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("UserID", getUserID())
            .append("Username", getUsername())
            .append("Gender", getGender())
            .append("Age", getAge())
            .append("Address", getAddress())
            .append("Password", getPassword())
            .append("RegistrationTime", getRegistrationTime())
            .toString();
    }
}
