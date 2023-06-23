package com.travelers.data.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.travelers.data.mapper.TravelersAttractionMapper;
import com.travelers.data.domain.TravelersAttraction;
import com.travelers.data.service.ITravelersAttractionService;

/**
 * 旅行家数据模块-景点表Service业务层处理
 * 
 * @author pinanoria
 * @date 2023-06-23
 */
@Service
public class TravelersAttractionServiceImpl implements ITravelersAttractionService 
{
    @Autowired
    private TravelersAttractionMapper travelersAttractionMapper;

    /**
     * 查询旅行家数据模块-景点表
     * 
     * @param AttractionID 旅行家数据模块-景点表主键
     * @return 旅行家数据模块-景点表
     */
    @Override
    public TravelersAttraction selectTravelersAttractionByAttractionID(Long AttractionID)
    {
        return travelersAttractionMapper.selectTravelersAttractionByAttractionID(AttractionID);
    }

    /**
     * 查询旅行家数据模块-景点表列表
     * 
     * @param travelersAttraction 旅行家数据模块-景点表
     * @return 旅行家数据模块-景点表
     */
    @Override
    public List<TravelersAttraction> selectTravelersAttractionList(TravelersAttraction travelersAttraction)
    {
        return travelersAttractionMapper.selectTravelersAttractionList(travelersAttraction);
    }

    /**
     * 新增旅行家数据模块-景点表
     * 
     * @param travelersAttraction 旅行家数据模块-景点表
     * @return 结果
     */
    @Override
    public int insertTravelersAttraction(TravelersAttraction travelersAttraction)
    {
        return travelersAttractionMapper.insertTravelersAttraction(travelersAttraction);
    }

    /**
     * 修改旅行家数据模块-景点表
     * 
     * @param travelersAttraction 旅行家数据模块-景点表
     * @return 结果
     */
    @Override
    public int updateTravelersAttraction(TravelersAttraction travelersAttraction)
    {
        return travelersAttractionMapper.updateTravelersAttraction(travelersAttraction);
    }

    /**
     * 批量删除旅行家数据模块-景点表
     * 
     * @param AttractionIDs 需要删除的旅行家数据模块-景点表主键
     * @return 结果
     */
    @Override
    public int deleteTravelersAttractionByAttractionIDs(Long[] AttractionIDs)
    {
        return travelersAttractionMapper.deleteTravelersAttractionByAttractionIDs(AttractionIDs);
    }

    /**
     * 删除旅行家数据模块-景点表信息
     * 
     * @param AttractionID 旅行家数据模块-景点表主键
     * @return 结果
     */
    @Override
    public int deleteTravelersAttractionByAttractionID(Long AttractionID)
    {
        return travelersAttractionMapper.deleteTravelersAttractionByAttractionID(AttractionID);
    }
}
