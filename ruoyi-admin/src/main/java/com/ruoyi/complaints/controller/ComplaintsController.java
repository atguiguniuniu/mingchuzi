package com.ruoyi.complaints.controller;

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
import com.ruoyi.complaints.domain.Complaints;
import com.ruoyi.complaints.service.IComplaintsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 投诉信息Controller
 * 
 * @author ruoyi
 * @date 2024-11-21
 */
@RestController
@RequestMapping("/complaints/complaints")
public class ComplaintsController extends BaseController
{
    @Autowired
    private IComplaintsService complaintsService;

    /**
     * 查询投诉信息列表
     */
    @PreAuthorize("@ss.hasPermi('complaints:complaints:list')")
    @GetMapping("/list")
    public TableDataInfo list(Complaints complaints)
    {
        startPage();
        List<Complaints> list = complaintsService.selectComplaintsList(complaints);
        return getDataTable(list);
    }

    /**
     * 导出投诉信息列表
     */
    @PreAuthorize("@ss.hasPermi('complaints:complaints:export')")
    @Log(title = "投诉信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Complaints complaints)
    {
        List<Complaints> list = complaintsService.selectComplaintsList(complaints);
        ExcelUtil<Complaints> util = new ExcelUtil<Complaints>(Complaints.class);
        util.exportExcel(response, list, "投诉信息数据");
    }

    /**
     * 获取投诉信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('complaints:complaints:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(complaintsService.selectComplaintsById(id));
    }

    /**
     * 新增投诉信息
     */
    @PreAuthorize("@ss.hasPermi('complaints:complaints:add')")
    @Log(title = "投诉信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Complaints complaints)
    {
        return toAjax(complaintsService.insertComplaints(complaints));
    }

    /**
     * 修改投诉信息
     */
    @PreAuthorize("@ss.hasPermi('complaints:complaints:edit')")
    @Log(title = "投诉信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Complaints complaints)
    {
        return toAjax(complaintsService.updateComplaints(complaints));
    }

    /**
     * 删除投诉信息
     */
    @PreAuthorize("@ss.hasPermi('complaints:complaints:remove')")
    @Log(title = "投诉信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(complaintsService.deleteComplaintsByIds(ids));
    }
}
