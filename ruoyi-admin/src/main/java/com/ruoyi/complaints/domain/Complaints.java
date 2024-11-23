package com.ruoyi.complaints.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 投诉信息对象 complaints
 *
 * @author ruoyi
 * @date 2024-11-21
 */
public class Complaints extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long id;

    /** 商家名称 */
    @Excel(name = "商家名称")
    private String complaintMerchant;

    /** 商家地址 */
    @Excel(name = "商家地址")
    private String merchantAddress;

    /** 商家信息的ID */
    @Excel(name = "商家信息的ID")
    private Long merchantInfoId;

    /** 投诉人电话号码 */
    @Excel(name = "投诉人电话号码")
    private String complainantPhone;

    /** 处理投诉人员姓名 */
    @Excel(name = "处理投诉人员姓名")
    private String inCharge;

    /** 处理投诉人员电话号码 */
    @Excel(name = "处理投诉人员电话号码")
    private String inChargephone;

    /** 投诉描述 */
    @Excel(name = "投诉描述")
    private String complainComment;

    /** 照片 */
    @Excel(name = "照片")
    private String complainPhoto;

    /** 处理结果 */
    @Excel(name = "处理结果")
    private String responseComplaint;

    /** 投诉日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "投诉日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date complainDate;

    /** 投诉是否已处理 */
    @Excel(name = "投诉是否已处理")
    private String ifHandle;

    /** 投诉人姓名 */
    @Excel(name = "投诉人姓名")
    private String complainant;

    /** 商家电话号码 */
    @Excel(name = "商家电话号码")
    private String merchantPhone;

    /** 城市 */
    @Excel(name = "城市")
    private String city;

    /** 区域 */
    @Excel(name = "区域")
    private String district;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setComplaintMerchant(String complaintMerchant)
    {
        this.complaintMerchant = complaintMerchant;
    }

    public String getComplaintMerchant()
    {
        return complaintMerchant;
    }
    public void setMerchantAddress(String merchantAddress)
    {
        this.merchantAddress = merchantAddress;
    }

    public String getMerchantAddress()
    {
        return merchantAddress;
    }
    public void setMerchantInfoId(Long merchantInfoId)
    {
        this.merchantInfoId = merchantInfoId;
    }

    public Long getMerchantInfoId()
    {
        return merchantInfoId;
    }
    public void setComplainantPhone(String complainantPhone)
    {
        this.complainantPhone = complainantPhone;
    }

    public String getComplainantPhone()
    {
        return complainantPhone;
    }
    public void setInCharge(String inCharge)
    {
        this.inCharge = inCharge;
    }

    public String getInCharge()
    {
        return inCharge;
    }
    public void setInChargephone(String inChargephone)
    {
        this.inChargephone = inChargephone;
    }

    public String getInChargephone()
    {
        return inChargephone;
    }
    public void setComplainComment(String complainComment)
    {
        this.complainComment = complainComment;
    }

    public String getComplainComment()
    {
        return complainComment;
    }
    public void setComplainPhoto(String complainPhoto)
    {
        this.complainPhoto = complainPhoto;
    }

    public String getComplainPhoto()
    {
        return complainPhoto;
    }
    public void setResponseComplaint(String responseComplaint)
    {
        this.responseComplaint = responseComplaint;
    }

    public String getResponseComplaint()
    {
        return responseComplaint;
    }
    public void setComplainDate(Date complainDate)
    {
        this.complainDate = complainDate;
    }

    public Date getComplainDate()
    {
        return complainDate;
    }
    public void setIfHandle(String ifHandle)
    {
        this.ifHandle = ifHandle;
    }

    public String getIfHandle()
    {
        return ifHandle;
    }
    public void setComplainant(String complainant)
    {
        this.complainant = complainant;
    }

    public String getComplainant()
    {
        return complainant;
    }
    public void setMerchantPhone(String merchantPhone)
    {
        this.merchantPhone = merchantPhone;
    }

    public String getMerchantPhone()
    {
        return merchantPhone;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("id", getId())
                .append("complaintMerchant", getComplaintMerchant())
                .append("merchantAddress", getMerchantAddress())
                .append("merchantInfoId", getMerchantInfoId())
                .append("complainantPhone", getComplainantPhone())
                .append("inCharge", getInCharge())
                .append("inChargephone", getInChargephone())
                .append("complainComment", getComplainComment())
                .append("complainPhoto", getComplainPhoto())
                .append("responseComplaint", getResponseComplaint())
                .append("complainDate", getComplainDate())
                .append("ifHandle", getIfHandle())
                .append("complainant", getComplainant())
                .append("merchantPhone", getMerchantPhone())
                .append("city", getCity())
                .append("district", getDistrict())
                .toString();
    }
}
