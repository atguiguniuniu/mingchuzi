package com.ruoyi.warning.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 风险预警对象 risk_warning
 * 
 * @author ruoyi
 * @date 2024-11-21
 */
public class RiskWarning extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String tradername;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String city;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String district;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String location;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String secureadmin;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String phone;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String depttype;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Date expirationdate;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String licensetype;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String flag;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String remind;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTradername(String tradername) 
    {
        this.tradername = tradername;
    }

    public String getTradername() 
    {
        return tradername;
    }
    public void setCity(String city) 
    {
        this.city = city;
    }

    public String getCity() 
    {
        return city;
    }
    public void setDistrict(String district) 
    {
        this.district = district;
    }

    public String getDistrict() 
    {
        return district;
    }
    public void setLocation(String location) 
    {
        this.location = location;
    }

    public String getLocation() 
    {
        return location;
    }
    public void setSecureadmin(String secureadmin) 
    {
        this.secureadmin = secureadmin;
    }

    public String getSecureadmin() 
    {
        return secureadmin;
    }
    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }
    public void setDepttype(String depttype) 
    {
        this.depttype = depttype;
    }

    public String getDepttype() 
    {
        return depttype;
    }
    public void setExpirationdate(Date expirationdate) 
    {
        this.expirationdate = expirationdate;
    }

    public Date getExpirationdate() 
    {
        return expirationdate;
    }
    public void setLicensetype(String licensetype) 
    {
        this.licensetype = licensetype;
    }

    public String getLicensetype() 
    {
        return licensetype;
    }
    public void setFlag(String flag) 
    {
        this.flag = flag;
    }

    public String getFlag() 
    {
        return flag;
    }
    public void setRemind(String remind) 
    {
        this.remind = remind;
    }

    public String getRemind() 
    {
        return remind;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("tradername", getTradername())
            .append("city", getCity())
            .append("district", getDistrict())
            .append("location", getLocation())
            .append("secureadmin", getSecureadmin())
            .append("phone", getPhone())
            .append("depttype", getDepttype())
            .append("expirationdate", getExpirationdate())
            .append("licensetype", getLicensetype())
            .append("flag", getFlag())
            .append("remind", getRemind())
            .toString();
    }
}
