package com.ruoyi.providerinfo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.common.core.domain.R;
import com.ruoyi.common.utils.poi.PDFUtil;
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
import com.ruoyi.providerinfo.domain.ProviderInfo;
import com.ruoyi.providerinfo.service.IProviderInfoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 供应商信息Controller
 * 
 * @author ruoyi
 * @date 2024-11-21
 */
@RestController
@RequestMapping("/providerinfo/providerinfo")
public class ProviderInfoController extends BaseController
{
    @Autowired
    private IProviderInfoService providerInfoService;

    /**
     * 查询供应商信息列表
     */
    @PreAuthorize("@ss.hasPermi('providerinfo:providerinfo:list')")
    @GetMapping("/list")
    public TableDataInfo list(ProviderInfo providerInfo)
    {
        startPage();
        List<ProviderInfo> list = providerInfoService.selectProviderInfoList(providerInfo);
        return getDataTable(list);
    }

    /**
     * 查询供应商信息统计
     */
    @PreAuthorize("@ss.hasPermi('providerinfo:providerinfo:list')")
    @GetMapping("/listCount")
    public R listTCount(ProviderInfo providerInfo)
    {
        List<ProviderInfo> list = providerInfoService.selectProviderInfoList(providerInfo);
        List<Map<String, Object>> collect = list.stream()
                .collect(Collectors.groupingBy(
                        ProviderInfo::getCity,  // 按照 city 分组
                        Collectors.counting()    // 统计每个 city 的数量
                )).entrySet()
                .stream()
                .map(entry -> {
                    Map<String, Object> map = new HashMap<>();
                    map.put("city", entry.getKey());
                    map.put("count", entry.getValue());
                    return map;
                })
                .collect(Collectors.toList());
        return R.ok(collect);
    }

    /**
     * 导出供应商信息列表
     */
    @PreAuthorize("@ss.hasPermi('providerinfo:providerinfo:export')")
    @Log(title = "供应商信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, ProviderInfo providerInfo)
    {
        List<ProviderInfo> list = providerInfoService.selectProviderInfoList(providerInfo);
        ExcelUtil<ProviderInfo> util = new ExcelUtil<ProviderInfo>(ProviderInfo.class);
        util.exportExcel(response, list, "供应商信息数据");
    }

    /**
     * 导出供应商信息列表
     */
    @PreAuthorize("@ss.hasPermi('providerinfo:providerinfo:export')")
    @Log(title = "供应商信息", businessType = BusinessType.EXPORT)
    @PostMapping("/exportPdf")
    public AjaxResult exportPdf (HttpServletResponse response, ProviderInfo providerInfo) throws Exception {
        List<ProviderInfo> list = providerInfoService.selectProviderInfoList(providerInfo);
        PDFUtil<ProviderInfo> util = new PDFUtil<ProviderInfo>(ProviderInfo.class);
        return AjaxResult.success(util.exportPdf(list, "供应商信息"));

    }

    /**
     * 获取供应商信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('providerinfo:providerinfo:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id)
    {
        return success(providerInfoService.selectProviderInfoById(id));
    }

    /**
     * 新增供应商信息
     */
    @PreAuthorize("@ss.hasPermi('providerinfo:providerinfo:add')")
    @Log(title = "供应商信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody ProviderInfo providerInfo)
    {
        return toAjax(providerInfoService.insertProviderInfo(providerInfo));
    }

    /**
     * 修改供应商信息
     */
    @PreAuthorize("@ss.hasPermi('providerinfo:providerinfo:edit')")
    @Log(title = "供应商信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody ProviderInfo providerInfo)
    {
        return toAjax(providerInfoService.updateProviderInfo(providerInfo));
    }

    /**
     * 删除供应商信息
     */
    @PreAuthorize("@ss.hasPermi('providerinfo:providerinfo:remove')")
    @Log(title = "供应商信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids)
    {
        return toAjax(providerInfoService.deleteProviderInfoByIds(ids));
    }
}
