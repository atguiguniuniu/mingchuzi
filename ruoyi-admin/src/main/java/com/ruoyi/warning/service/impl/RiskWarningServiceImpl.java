package com.ruoyi.warning.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.warning.mapper.RiskWarningMapper;
import com.ruoyi.warning.domain.RiskWarning;
import com.ruoyi.warning.service.IRiskWarningService;

/**
 * 风险预警Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-11-21
 */
@Service
public class RiskWarningServiceImpl implements IRiskWarningService 
{
    @Autowired
    private RiskWarningMapper riskWarningMapper;

    /**
     * 查询风险预警
     * 
     * @param id 风险预警主键
     * @return 风险预警
     */
    @Override
    public RiskWarning selectRiskWarningById(Long id)
    {
        return riskWarningMapper.selectRiskWarningById(id);
    }

    /**
     * 查询风险预警列表
     * 
     * @param riskWarning 风险预警
     * @return 风险预警
     */
    @Override
    public List<RiskWarning> selectRiskWarningList(RiskWarning riskWarning)
    {
        return riskWarningMapper.selectRiskWarningList(riskWarning);
    }

    /**
     * 新增风险预警
     * 
     * @param riskWarning 风险预警
     * @return 结果
     */
    @Override
    public int insertRiskWarning(RiskWarning riskWarning)
    {
        return riskWarningMapper.insertRiskWarning(riskWarning);
    }

    /**
     * 修改风险预警
     * 
     * @param riskWarning 风险预警
     * @return 结果
     */
    @Override
    public int updateRiskWarning(RiskWarning riskWarning)
    {
        return riskWarningMapper.updateRiskWarning(riskWarning);
    }

    /**
     * 批量删除风险预警
     * 
     * @param ids 需要删除的风险预警主键
     * @return 结果
     */
    @Override
    public int deleteRiskWarningByIds(Long[] ids)
    {
        return riskWarningMapper.deleteRiskWarningByIds(ids);
    }

    /**
     * 删除风险预警信息
     * 
     * @param id 风险预警主键
     * @return 结果
     */
    @Override
    public int deleteRiskWarningById(Long id)
    {
        return riskWarningMapper.deleteRiskWarningById(id);
    }
}
