package com.ruoyi.warning.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.warning.domain.RiskWarning;
import com.ruoyi.warning.service.IRiskWarningService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 风险预警Controller
 * 
 * @author ruoyi
 * @date 2024-11-21
 */
@RestController
@RequestMapping("/warning/warning")
public class RiskWarningController extends BaseController
{
    @Autowired
    private IRiskWarningService riskWarningService;

    /**
     * 查询风险预警列表
     */
    @PreAuthorize("@ss.hasPermi('warning:warning:list')")
    @GetMapping("/list")
    public TableDataInfo list(RiskWarning riskWarning)
    {
        startPage();
        List<RiskWarning> list = riskWarningService.selectRiskWarningList(riskWarning);
        return getDataTable(list);
    }

    /**
     * 导出风险预警列表
     */
    @PreAuthorize("@ss.hasPermi('warning:warning:export')")
    @Log(title = "风险预警", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, RiskWarning riskWarning)
    {
        List<RiskWarning> list = riskWarningService.selectRiskWarningList(riskWarning);
        ExcelUtil<RiskWarning> util = new ExcelUtil<RiskWarning>(RiskWarning.class);
        util.exportExcel(response, list, "风险预警数据");
    }

    /**
     * 获取风险预警详细信息
     */
    @PreAuthorize("@ss.hasPermi('warning:warning:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(riskWarningService.selectRiskWarningById(id));
    }

    /**
     * 新增风险预警
     */
    @PreAuthorize("@ss.hasPermi('warning:warning:add')")
    @Log(title = "风险预警", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody RiskWarning riskWarning)
    {
        return toAjax(riskWarningService.insertRiskWarning(riskWarning));
    }

    /**
     * 修改风险预警
     */
    @PreAuthorize("@ss.hasPermi('warning:warning:edit')")
    @Log(title = "风险预警", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody RiskWarning riskWarning)
    {
        return toAjax(riskWarningService.updateRiskWarning(riskWarning));
    }

    /**
     * 删除风险预警
     */
    @PreAuthorize("@ss.hasPermi('warning:warning:remove')")
    @Log(title = "风险预警", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(riskWarningService.deleteRiskWarningByIds(ids));
    }
}
