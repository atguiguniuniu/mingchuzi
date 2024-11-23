package com.ruoyi.providerinfo.mapper;

import java.util.List;
import com.ruoyi.providerinfo.domain.ProviderInfo;

/**
 * 供应商信息Mapper接口
 * 
 * @author ruoyi
 * @date 2024-11-21
 */
public interface ProviderInfoMapper 
{
    /**
     * 查询供应商信息
     * 
     * @param id 供应商信息主键
     * @return 供应商信息
     */
    public ProviderInfo selectProviderInfoById(Integer id);

    /**
     * 查询供应商信息列表
     * 
     * @param providerInfo 供应商信息
     * @return 供应商信息集合
     */
    public List<ProviderInfo> selectProviderInfoList(ProviderInfo providerInfo);

    /**
     * 新增供应商信息
     * 
     * @param providerInfo 供应商信息
     * @return 结果
     */
    public int insertProviderInfo(ProviderInfo providerInfo);

    /**
     * 修改供应商信息
     * 
     * @param providerInfo 供应商信息
     * @return 结果
     */
    public int updateProviderInfo(ProviderInfo providerInfo);

    /**
     * 删除供应商信息
     * 
     * @param id 供应商信息主键
     * @return 结果
     */
    public int deleteProviderInfoById(Integer id);

    /**
     * 批量删除供应商信息
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteProviderInfoByIds(Integer[] ids);
}