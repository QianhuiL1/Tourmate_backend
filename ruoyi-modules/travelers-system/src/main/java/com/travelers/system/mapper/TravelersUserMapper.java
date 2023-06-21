package com.travelers.system.mapper;

import java.util.List;
import com.travelers.system.domain.TravelersUser;

/**
 * 旅行家系统用户模块Mapper接口
 * 
 * @author pinanoria
 * @date 2023-06-21
 */
public interface TravelersUserMapper
{
    /**
     * 查询旅行家系统用户模块
     * 
     * @param UserID 旅行家系统用户模块主键
     * @return 旅行家系统用户模块
     */
    public TravelersUser selectTravelersUserByUserID(Long UserID);

    /**
     * 查询旅行家系统用户模块列表
     * 
     * @param travelersUser 旅行家系统用户模块
     * @return 旅行家系统用户模块集合
     */
    public List<TravelersUser> selectTravelersUserList(TravelersUser travelersUser);

    /**
     * 新增旅行家系统用户模块
     * 
     * @param travelersUser 旅行家系统用户模块
     * @return 结果
     */
    public int insertTravelersUser(TravelersUser travelersUser);

    /**
     * 修改旅行家系统用户模块
     * 
     * @param travelersUser 旅行家系统用户模块
     * @return 结果
     */
    public int updateTravelersUser(TravelersUser travelersUser);

    /**
     * 删除旅行家系统用户模块
     * 
     * @param UserID 旅行家系统用户模块主键
     * @return 结果
     */
    public int deleteTravelersUserByUserID(Long UserID);

    /**
     * 批量删除旅行家系统用户模块
     * 
     * @param UserIDs 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTravelersUserByUserIDs(Long[] UserIDs);
}
