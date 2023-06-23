package com.travelers.data.mapper;

import java.util.List;
import com.travelers.data.domain.TravelersUser;

/**
 * 旅行家系统数据模块-用户表Mapper接口
 * 
 * @author pinanoria
 * @date 2023-06-23
 */
public interface TravelersUserMapper 
{
    /**
     * 查询旅行家系统数据模块-用户表
     * 
     * @param UserID 旅行家系统数据模块-用户表主键
     * @return 旅行家系统数据模块-用户表
     */
    public TravelersUser selectTravelersUserByUserID(Long UserID);

    /**
     * 查询旅行家系统数据模块-用户表列表
     * 
     * @param travelersUser 旅行家系统数据模块-用户表
     * @return 旅行家系统数据模块-用户表集合
     */
    public List<TravelersUser> selectTravelersUserList(TravelersUser travelersUser);

    /**
     * 新增旅行家系统数据模块-用户表
     * 
     * @param travelersUser 旅行家系统数据模块-用户表
     * @return 结果
     */
    public int insertTravelersUser(TravelersUser travelersUser);

    /**
     * 修改旅行家系统数据模块-用户表
     * 
     * @param travelersUser 旅行家系统数据模块-用户表
     * @return 结果
     */
    public int updateTravelersUser(TravelersUser travelersUser);

    /**
     * 删除旅行家系统数据模块-用户表
     * 
     * @param UserID 旅行家系统数据模块-用户表主键
     * @return 结果
     */
    public int deleteTravelersUserByUserID(Long UserID);

    /**
     * 批量删除旅行家系统数据模块-用户表
     * 
     * @param UserIDs 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTravelersUserByUserIDs(Long[] UserIDs);
}
