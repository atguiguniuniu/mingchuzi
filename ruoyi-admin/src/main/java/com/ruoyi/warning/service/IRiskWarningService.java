package com.ruoyi.warning.service;

import java.util.List;
import com.ruoyi.warning.domain.RiskWarning;

/**
 * 风险预警Service接口
 * 
 * @author ruoyi
 * @date 2024-11-21
 */
public interface IRiskWarningService 
{
    /**
     * 查询风险预警
     * 
     * @param id 风险预警主键
     * @return 风险预警
     */
    public RiskWarning selectRiskWarningById(Long id);

    /**
     * 查询风险预警列表
     * 
     * @param riskWarning 风险预警
     * @return 风险预警集合
     */
    public List<RiskWarning> selectRiskWarningList(RiskWarning riskWarning);

    /**
     * 新增风险预警
     * 
     * @param riskWarning 风险预警
     * @return 结果
     */
    public int insertRiskWarning(RiskWarning riskWarning);

    /**
     * 修改风险预警
     * 
     * @param riskWarning 风险预警
     * @return 结果
     */
    public int updateRiskWarning(RiskWarning riskWarning);

    /**
     * 批量删除风险预警
     * 
     * @param ids 需要删除的风险预警主键集合
     * @return 结果
     */
    public int deleteRiskWarningByIds(Long[] ids);

    /**
     * 删除风险预警信息
     * 
     * @param id 风险预警主键
     * @return 结果
     */
    public int deleteRiskWarningById(Long id);
}
