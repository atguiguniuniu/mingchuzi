package com.ruoyi.deviceSys.service.impl;

import java.util.List;
import java.util.Map;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.deviceSys.mapper.DeviceFileMapper;
import com.ruoyi.deviceSys.domain.DeviceFile;
import com.ruoyi.deviceSys.service.IDeviceFileService;

/**
 * 设备信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-11-15
 */
@Service
public class DeviceFileServiceImpl implements IDeviceFileService 
{
    @Autowired
    private DeviceFileMapper deviceFileMapper;

    /**
     * 查询设备信息
     * 
     * @param id 设备信息主键
     * @return 设备信息
     */
    @Override
    public DeviceFile selectDeviceFileById(String id)
    {
        return deviceFileMapper.selectDeviceFileById(id);
    }

    /**
     * 查询设备信息列表
     * 
     * @param deviceFile 设备信息
     * @return 设备信息
     */
    @Override
    public List<DeviceFile> selectDeviceFileList(DeviceFile deviceFile)
    {
        return deviceFileMapper.selectDeviceFileList(deviceFile);
    }

    /**
     * 新增设备信息
     * 
     * @param deviceFile 设备信息
     * @return 结果
     */
    @Override
    public int insertDeviceFile(DeviceFile deviceFile)
    {
        deviceFile.setCreateTime(DateUtils.getNowDate());
        return deviceFileMapper.insertDeviceFile(deviceFile);
    }

    /**
     * 修改设备信息
     * 
     * @param deviceFile 设备信息
     * @return 结果
     */
    @Override
    public int updateDeviceFile(DeviceFile deviceFile)
    {
        return deviceFileMapper.updateDeviceFile(deviceFile);
    }

    /**
     * 批量删除设备信息
     * 
     * @param ids 需要删除的设备信息主键
     * @return 结果
     */
    @Override
    public int deleteDeviceFileByIds(String[] ids)
    {
        return deviceFileMapper.deleteDeviceFileByIds(ids);
    }

    /**
     * 删除设备信息信息
     * 
     * @param id 设备信息主键
     * @return 结果
     */
    @Override
    public int deleteDeviceFileById(String id)
    {
        return deviceFileMapper.deleteDeviceFileById(id);
    }



    @Override
    public List<Map<String, Object>> getDeviceCountByCreator() {
        return deviceFileMapper.selectDeviceCountByCreator();
    }
}
