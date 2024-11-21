package com.ruoyi.deviceSys.controller;

import java.util.List;
import java.util.Map;
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
import com.ruoyi.deviceSys.domain.DeviceFile;
import com.ruoyi.deviceSys.service.IDeviceFileService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 设备信息Controller
 * 
 * @author ruoyi
 * @date 2024-11-15
 */
@RestController
@RequestMapping("/deviceSys/device")
public class DeviceFileController extends BaseController
{
    @Autowired
    private IDeviceFileService deviceFileService;

    /**
     * 查询设备信息列表
     */
    @PreAuthorize("@ss.hasPermi('deviceSys:device:list')")
    @GetMapping("/list")
    public TableDataInfo list(DeviceFile deviceFile)
    {
        startPage();
        List<DeviceFile> list = deviceFileService.selectDeviceFileList(deviceFile);
        return getDataTable(list);
    }

    /**
     * 导出设备信息列表
     */
    @PreAuthorize("@ss.hasPermi('deviceSys:device:export')")
    @Log(title = "设备信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, DeviceFile deviceFile)
    {
        List<DeviceFile> list = deviceFileService.selectDeviceFileList(deviceFile);
        ExcelUtil<DeviceFile> util = new ExcelUtil<DeviceFile>(DeviceFile.class);
        util.exportExcel(response, list, "设备信息数据");
    }

    /**
     * 获取设备信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('deviceSys:device:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") String id)
    {
        return success(deviceFileService.selectDeviceFileById(id));
    }

    /**
     * 新增设备信息
     */
    @PreAuthorize("@ss.hasPermi('deviceSys:device:add')")
    @Log(title = "设备信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody DeviceFile deviceFile)
    {
        return toAjax(deviceFileService.insertDeviceFile(deviceFile));
    }

    /**
     * 修改设备信息
     */
    @PreAuthorize("@ss.hasPermi('deviceSys:device:edit')")
    @Log(title = "设备信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody DeviceFile deviceFile)
    {
        return toAjax(deviceFileService.updateDeviceFile(deviceFile));
    }

    /**
     * 删除设备信息
     */
    @PreAuthorize("@ss.hasPermi('deviceSys:device:remove')")
    @Log(title = "设备信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable String[] ids)
    {
        return toAjax(deviceFileService.deleteDeviceFileByIds(ids));
    }

    @PreAuthorize("@ss.hasPermi('deviceSys:device:count')") // 确保有相应的权限
    @GetMapping("/count")
    public AjaxResult countDeviceByCreator() {
        List<Map<String, Object>> deviceCounts = deviceFileService.getDeviceCountByCreator();
        return AjaxResult.success(deviceCounts); // 返回统计数据
    }
}
