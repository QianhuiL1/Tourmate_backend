package com.travelers.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.travelers.system.mapper.TravelersUserMapper;
import com.travelers.system.domain.TravelersUser;
import com.travelers.system.service.ITravelersUserService;

/**
 * 旅行家系统用户模块Service业务层处理
 * 
 * @author pinanoria
 * @date 2023-06-21
 */
@Service
public class TravelersUserServiceImpl implements ITravelersUserService 
{
    @Autowired
    private TravelersUserMapper travelersUserMapper;

    /**
     * 查询旅行家系统用户模块
     * 
     * @param UserID 旅行家系统用户模块主键
     * @return 旅行家系统用户模块
     */
    @Override
    public TravelersUser selectTravelersUserByUserID(Long UserID)
    {
        return travelersUserMapper.selectTravelersUserByUserID(UserID);
    }

    /**
     * 查询旅行家系统用户模块列表
     * 
     * @param travelersUser 旅行家系统用户模块
     * @return 旅行家系统用户模块
     */
    @Override
    public List<TravelersUser> selectTravelersUserList(TravelersUser travelersUser)
    {
        return travelersUserMapper.selectTravelersUserList(travelersUser);
    }

    /**
     * 新增旅行家系统用户模块
     * 
     * @param travelersUser 旅行家系统用户模块
     * @return 结果
     */
    @Override
    public int insertTravelersUser(TravelersUser travelersUser)
    {
        return travelersUserMapper.insertTravelersUser(travelersUser);
    }

    /**
     * 修改旅行家系统用户模块
     * 
     * @param travelersUser 旅行家系统用户模块
     * @return 结果
     */
    @Override
    public int updateTravelersUser(TravelersUser travelersUser)
    {
        return travelersUserMapper.updateTravelersUser(travelersUser);
    }

    /**
     * 批量删除旅行家系统用户模块
     * 
     * @param UserIDs 需要删除的旅行家系统用户模块主键
     * @return 结果
     */
    @Override
    public int deleteTravelersUserByUserIDs(Long[] UserIDs)
    {
        return travelersUserMapper.deleteTravelersUserByUserIDs(UserIDs);
    }

    /**
     * 删除旅行家系统用户模块信息
     * 
     * @param UserID 旅行家系统用户模块主键
     * @return 结果
     */
    @Override
    public int deleteTravelersUserByUserID(Long UserID)
    {
        return travelersUserMapper.deleteTravelersUserByUserID(UserID);
    }
}
