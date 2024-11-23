package com.ruoyi.providerinfo.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 供应商信息对象 provider_info
 *
 * @author ruoyi
 * @date 2024-11-21
 */
public class ProviderInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Integer id;

    /** 社会信用代码 */
    @Excel(name = "社会信用代码")
    private String socialcreditcode;

    /** 供应商名称 */
    @Excel(name = "供应商名称")
    private String providername;

    /** 供应商地址 */
    @Excel(name = "供应商地址")
    private String location;

    /** 法定代表人姓名 */
    @Excel(name = "法定代表人姓名")
    private String juridicalperson;

    /** 经营范围 */
    @Excel(name = "经营范围")
    private String businessscope;

    /** 到期日期 */
    @Excel(name = "到期日期")
    private String expirationdate;

    /** 照片 */
    @Excel(name = "照片")
    private String photopath;

    /** 城市 */
    @Excel(name = "城市")
    private String city;

    /** 区域 */
    @Excel(name = "区域")
    private String district;

    /** 联系电话 */
    @Excel(name = "联系电话")
    private String providerphone;

    /** 地区 */
    @Excel(name = "地区")
    private String area;

    public void setId(Integer id)
    {
        this.id = id;
    }

    public Integer getId()
    {
        return id;
    }
    public void setSocialcreditcode(String socialcreditcode)
    {
        this.socialcreditcode = socialcreditcode;
    }

    public String getSocialcreditcode()
    {
        return socialcreditcode;
    }
    public void setProvidername(String providername)
    {
        this.providername = providername;
    }

    public String getProvidername()
    {
        return providername;
    }
    public void setLocation(String location)
    {
        this.location = location;
    }

    public String getLocation()
    {
        return location;
    }
    public void setJuridicalperson(String juridicalperson)
    {
        this.juridicalperson = juridicalperson;
    }

    public String getJuridicalperson()
    {
        return juridicalperson;
    }
    public void setBusinessscope(String businessscope)
    {
        this.businessscope = businessscope;
    }

    public String getBusinessscope()
    {
        return businessscope;
    }
    public void setExpirationdate(String expirationdate)
    {
        this.expirationdate = expirationdate;
    }

    public String getExpirationdate()
    {
        return expirationdate;
    }
    public void setPhotopath(String photopath)
    {
        this.photopath = photopath;
    }

    public String getPhotopath()
    {
        return photopath;
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
    public void setProviderphone(String providerphone)
    {
        this.providerphone = providerphone;
    }

    public String getProviderphone()
    {
        return providerphone;
    }
    public void setArea(String area)
    {
        this.area = area;
    }

    public String getArea()
    {
        return area;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("socialcreditcode", getSocialcreditcode())
                .append("providername", getProvidername())
                .append("location", getLocation())
                .append("juridicalperson", getJuridicalperson())
                .append("businessscope", getBusinessscope())
                .append("expirationdate", getExpirationdate())
                .append("photopath", getPhotopath())
                .append("city", getCity())
                .append("district", getDistrict())
                .append("providerphone", getProviderphone())
                .append("area", getArea())
                .toString();
    }
}
