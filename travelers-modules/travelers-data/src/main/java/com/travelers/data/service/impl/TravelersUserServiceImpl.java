package com.travelers.data.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.travelers.data.mapper.TravelersUserMapper;
import com.travelers.data.domain.TravelersUser;
import com.travelers.data.service.ITravelersUserService;

/**
 * 旅行家系统数据模块-用户表Service业务层处理
 * 
 * @author pinanoria
 * @date 2023-06-23
 */
@Service
public class TravelersUserServiceImpl implements ITravelersUserService 
{
    @Autowired
    private TravelersUserMapper travelersUserMapper;

    /**
     * 查询旅行家系统数据模块-用户表
     * 
     * @param UserID 旅行家系统数据模块-用户表主键
     * @return 旅行家系统数据模块-用户表
     */
    @Override
    public TravelersUser selectTravelersUserByUserID(Long UserID)
    {
        return travelersUserMapper.selectTravelersUserByUserID(UserID);
    }

    /**
     * 查询旅行家系统数据模块-用户表列表
     * 
     * @param travelersUser 旅行家系统数据模块-用户表
     * @return 旅行家系统数据模块-用户表
     */
    @Override
    public List<TravelersUser> selectTravelersUserList(TravelersUser travelersUser)
    {
        return travelersUserMapper.selectTravelersUserList(travelersUser);
    }

    /**
     * 新增旅行家系统数据模块-用户表
     * 
     * @param travelersUser 旅行家系统数据模块-用户表
     * @return 结果
     */
    @Override
    public int insertTravelersUser(TravelersUser travelersUser)
    {
        return travelersUserMapper.insertTravelersUser(travelersUser);
    }

    /**
     * 修改旅行家系统数据模块-用户表
     * 
     * @param travelersUser 旅行家系统数据模块-用户表
     * @return 结果
     */
    @Override
    public int updateTravelersUser(TravelersUser travelersUser)
    {
        return travelersUserMapper.updateTravelersUser(travelersUser);
    }

    /**
     * 批量删除旅行家系统数据模块-用户表
     * 
     * @param UserIDs 需要删除的旅行家系统数据模块-用户表主键
     * @return 结果
     */
    @Override
    public int deleteTravelersUserByUserIDs(Long[] UserIDs)
    {
        return travelersUserMapper.deleteTravelersUserByUserIDs(UserIDs);
    }

    /**
     * 删除旅行家系统数据模块-用户表信息
     * 
     * @param UserID 旅行家系统数据模块-用户表主键
     * @return 结果
     */
    @Override
    public int deleteTravelersUserByUserID(Long UserID)
    {
        return travelersUserMapper.deleteTravelersUserByUserID(UserID);
    }
}
