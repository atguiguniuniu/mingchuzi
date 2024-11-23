package com.ruoyi.providerinfo.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.providerinfo.mapper.ProviderInfoMapper;
import com.ruoyi.providerinfo.domain.ProviderInfo;
import com.ruoyi.providerinfo.service.IProviderInfoService;

/**
 * 供应商信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-11-21
 */
@Service
public class ProviderInfoServiceImpl implements IProviderInfoService 
{
    @Autowired
    private ProviderInfoMapper providerInfoMapper;

    /**
     * 查询供应商信息
     * 
     * @param id 供应商信息主键
     * @return 供应商信息
     */
    @Override
    public ProviderInfo selectProviderInfoById(Integer id)
    {
        return providerInfoMapper.selectProviderInfoById(id);
    }

    /**
     * 查询供应商信息列表
     * 
     * @param providerInfo 供应商信息
     * @return 供应商信息
     */
    @Override
    public List<ProviderInfo> selectProviderInfoList(ProviderInfo providerInfo)
    {
        return providerInfoMapper.selectProviderInfoList(providerInfo);
    }

    /**
     * 新增供应商信息
     * 
     * @param providerInfo 供应商信息
     * @return 结果
     */
    @Override
    public int insertProviderInfo(ProviderInfo providerInfo)
    {
        return providerInfoMapper.insertProviderInfo(providerInfo);
    }

    /**
     * 修改供应商信息
     * 
     * @param providerInfo 供应商信息
     * @return 结果
     */
    @Override
    public int updateProviderInfo(ProviderInfo providerInfo)
    {
        return providerInfoMapper.updateProviderInfo(providerInfo);
    }

    /**
     * 批量删除供应商信息
     * 
     * @param ids 需要删除的供应商信息主键
     * @return 结果
     */
    @Override
    public int deleteProviderInfoByIds(Integer[] ids)
    {
        return providerInfoMapper.deleteProviderInfoByIds(ids);
    }

    /**
     * 删除供应商信息信息
     * 
     * @param id 供应商信息主键
     * @return 结果
     */
    @Override
    public int deleteProviderInfoById(Integer id)
    {
        return providerInfoMapper.deleteProviderInfoById(id);
    }
}
