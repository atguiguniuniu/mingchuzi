package com.ruoyi.complaints.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.complaints.mapper.ComplaintsMapper;
import com.ruoyi.complaints.domain.Complaints;
import com.ruoyi.complaints.service.IComplaintsService;

/**
 * 投诉信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-11-21
 */
@Service
public class ComplaintsServiceImpl implements IComplaintsService 
{
    @Autowired
    private ComplaintsMapper complaintsMapper;

    /**
     * 查询投诉信息
     * 
     * @param id 投诉信息主键
     * @return 投诉信息
     */
    @Override
    public Complaints selectComplaintsById(Long id)
    {
        return complaintsMapper.selectComplaintsById(id);
    }

    /**
     * 查询投诉信息列表
     * 
     * @param complaints 投诉信息
     * @return 投诉信息
     */
    @Override
    public List<Complaints> selectComplaintsList(Complaints complaints)
    {
        return complaintsMapper.selectComplaintsList(complaints);
    }

    /**
     * 新增投诉信息
     * 
     * @param complaints 投诉信息
     * @return 结果
     */
    @Override
    public int insertComplaints(Complaints complaints)
    {
        return complaintsMapper.insertComplaints(complaints);
    }

    /**
     * 修改投诉信息
     * 
     * @param complaints 投诉信息
     * @return 结果
     */
    @Override
    public int updateComplaints(Complaints complaints)
    {
        return complaintsMapper.updateComplaints(complaints);
    }

    /**
     * 批量删除投诉信息
     * 
     * @param ids 需要删除的投诉信息主键
     * @return 结果
     */
    @Override
    public int deleteComplaintsByIds(Long[] ids)
    {
        return complaintsMapper.deleteComplaintsByIds(ids);
    }

    /**
     * 删除投诉信息信息
     * 
     * @param id 投诉信息主键
     * @return 结果
     */
    @Override
    public int deleteComplaintsById(Long id)
    {
        return complaintsMapper.deleteComplaintsById(id);
    }
}
