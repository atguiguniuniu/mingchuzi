package com.ruoyi.deviceSys.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 设备信息对象 device_file
 * 
 * @author ruoyi
 * @date 2024-11-15
 */
public class DeviceFile extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 唯一ID */
    private String id;

    /** 父ID */
    @Excel(name = "父ID")
    private String parentId;

    /** 设备ID */
    @Excel(name = "设备ID")
    private String deviceId;

    /** 设备名 */
    @Excel(name = "设备名")
    private String deviceName;

    /** 设备类型 */
    @Excel(name = "设备类型")
    private String deviceType;

    /** 标识 */
    @Excel(name = "标识")
    private Long checkTag;

    /** 检查 */
    @Excel(name = "检查")
    private String checker;

    /** 检查时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "检查时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date checkTime;

    /** 使用标识 */
    @Excel(name = "使用标识")
    private Integer usedTag;

    /** 创建人ID */
    @Excel(name = "创建人ID")
    private String creatorId;

    /** 创建人 */
    @Excel(name = "创建人")
    private String creator;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setParentId(String parentId) 
    {
        this.parentId = parentId;
    }

    public String getParentId() 
    {
        return parentId;
    }
    public void setDeviceId(String deviceId) 
    {
        this.deviceId = deviceId;
    }

    public String getDeviceId() 
    {
        return deviceId;
    }
    public void setDeviceName(String deviceName) 
    {
        this.deviceName = deviceName;
    }

    public String getDeviceName() 
    {
        return deviceName;
    }
    public void setDeviceType(String deviceType) 
    {
        this.deviceType = deviceType;
    }

    public String getDeviceType() 
    {
        return deviceType;
    }
    public void setCheckTag(Long checkTag) 
    {
        this.checkTag = checkTag;
    }

    public Long getCheckTag() 
    {
        return checkTag;
    }
    public void setChecker(String checker) 
    {
        this.checker = checker;
    }

    public String getChecker() 
    {
        return checker;
    }
    public void setCheckTime(Date checkTime) 
    {
        this.checkTime = checkTime;
    }

    public Date getCheckTime() 
    {
        return checkTime;
    }
    public void setUsedTag(Integer usedTag) 
    {
        this.usedTag = usedTag;
    }

    public Integer getUsedTag() 
    {
        return usedTag;
    }
    public void setCreatorId(String creatorId) 
    {
        this.creatorId = creatorId;
    }

    public String getCreatorId() 
    {
        return creatorId;
    }
    public void setCreator(String creator) 
    {
        this.creator = creator;
    }

    public String getCreator() 
    {
        return creator;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("parentId", getParentId())
            .append("deviceId", getDeviceId())
            .append("deviceName", getDeviceName())
            .append("deviceType", getDeviceType())
            .append("checkTag", getCheckTag())
            .append("checker", getChecker())
            .append("checkTime", getCheckTime())
            .append("usedTag", getUsedTag())
            .append("creatorId", getCreatorId())
            .append("creator", getCreator())
            .append("createTime", getCreateTime())
            .toString();
    }
}
