package com.ruoyi.deviceSys.mapper;

import java.util.List;
import java.util.Map;

import com.ruoyi.deviceSys.domain.DeviceFile;

/**
 * 设备信息Mapper接口
 * 
 * @author ruoyi
 * @date 2024-11-15
 */
public interface DeviceFileMapper 
{
    /**
     * 查询设备信息
     * 
     * @param id 设备信息主键
     * @return 设备信息
     */
    public DeviceFile selectDeviceFileById(String id);

    /**
     * 查询设备信息列表
     * 
     * @param deviceFile 设备信息
     * @return 设备信息集合
     */
    public List<DeviceFile> selectDeviceFileList(DeviceFile deviceFile);

    /**
     * 新增设备信息
     * 
     * @param deviceFile 设备信息
     * @return 结果
     */
    public int insertDeviceFile(DeviceFile deviceFile);

    /**
     * 修改设备信息
     * 
     * @param deviceFile 设备信息
     * @return 结果
     */
    public int updateDeviceFile(DeviceFile deviceFile);

    /**
     * 删除设备信息
     * 
     * @param id 设备信息主键
     * @return 结果
     */
    public int deleteDeviceFileById(String id);

    /**
     * 批量删除设备信息
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDeviceFileByIds(String[] ids);


    List<Map<String, Object>> selectDeviceCountByCreator();

}
