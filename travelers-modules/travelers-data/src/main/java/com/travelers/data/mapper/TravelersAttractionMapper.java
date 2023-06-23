package com.travelers.data.mapper;

import java.util.List;
import com.travelers.data.domain.TravelersAttraction;

/**
 * 旅行家数据模块-景点表Mapper接口
 * 
 * @author pinanoria
 * @date 2023-06-23
 */
public interface TravelersAttractionMapper 
{
    /**
     * 查询旅行家数据模块-景点表
     * 
     * @param AttractionID 旅行家数据模块-景点表主键
     * @return 旅行家数据模块-景点表
     */
    public TravelersAttraction selectTravelersAttractionByAttractionID(Long AttractionID);

    /**
     * 查询旅行家数据模块-景点表列表
     * 
     * @param travelersAttraction 旅行家数据模块-景点表
     * @return 旅行家数据模块-景点表集合
     */
    public List<TravelersAttraction> selectTravelersAttractionList(TravelersAttraction travelersAttraction);

    /**
     * 新增旅行家数据模块-景点表
     * 
     * @param travelersAttraction 旅行家数据模块-景点表
     * @return 结果
     */
    public int insertTravelersAttraction(TravelersAttraction travelersAttraction);

    /**
     * 修改旅行家数据模块-景点表
     * 
     * @param travelersAttraction 旅行家数据模块-景点表
     * @return 结果
     */
    public int updateTravelersAttraction(TravelersAttraction travelersAttraction);

    /**
     * 删除旅行家数据模块-景点表
     * 
     * @param AttractionID 旅行家数据模块-景点表主键
     * @return 结果
     */
    public int deleteTravelersAttractionByAttractionID(Long AttractionID);

    /**
     * 批量删除旅行家数据模块-景点表
     * 
     * @param AttractionIDs 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteTravelersAttractionByAttractionIDs(Long[] AttractionIDs);
}
