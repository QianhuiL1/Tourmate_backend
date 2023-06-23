package com.travelers.data.controller;

import java.util.List;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.log.annotation.Log;
import com.ruoyi.common.log.enums.BusinessType;
import com.ruoyi.common.security.annotation.RequiresPermissions;
import com.travelers.data.domain.TravelersAttraction;
import com.travelers.data.service.ITravelersAttractionService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 旅行家数据模块-景点表Controller
 * 
 * @author pinanoria
 * @date 2023-06-23
 */
@RestController
@RequestMapping("/TravelersAttraction")
public class TravelersAttractionController extends BaseController
{
    @Autowired
    private ITravelersAttractionService travelersAttractionService;

    /**
     * 查询旅行家数据模块-景点表列表
     */
    @RequiresPermissions("data:TravelersAttraction:list")
    @GetMapping("/list")
    public TableDataInfo list(TravelersAttraction travelersAttraction)
    {
        startPage();
        List<TravelersAttraction> list = travelersAttractionService.selectTravelersAttractionList(travelersAttraction);
        return getDataTable(list);
    }

    /**
     * 导出旅行家数据模块-景点表列表
     */
    @RequiresPermissions("data:TravelersAttraction:export")
    @Log(title = "旅行家数据模块-景点表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TravelersAttraction travelersAttraction)
    {
        List<TravelersAttraction> list = travelersAttractionService.selectTravelersAttractionList(travelersAttraction);
        ExcelUtil<TravelersAttraction> util = new ExcelUtil<TravelersAttraction>(TravelersAttraction.class);
        util.exportExcel(response, list, "旅行家数据模块-景点表数据");
    }

    /**
     * 获取旅行家数据模块-景点表详细信息
     */
    @RequiresPermissions("data:TravelersAttraction:query")
    @GetMapping(value = "/{AttractionID}")
    public AjaxResult getInfo(@PathVariable("AttractionID") Long AttractionID)
    {
        return success(travelersAttractionService.selectTravelersAttractionByAttractionID(AttractionID));
    }

    /**
     * 新增旅行家数据模块-景点表
     */
    @RequiresPermissions("data:TravelersAttraction:add")
    @Log(title = "旅行家数据模块-景点表", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TravelersAttraction travelersAttraction)
    {
        return toAjax(travelersAttractionService.insertTravelersAttraction(travelersAttraction));
    }

    /**
     * 修改旅行家数据模块-景点表
     */
    @RequiresPermissions("data:TravelersAttraction:edit")
    @Log(title = "旅行家数据模块-景点表", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TravelersAttraction travelersAttraction)
    {
        return toAjax(travelersAttractionService.updateTravelersAttraction(travelersAttraction));
    }

    /**
     * 删除旅行家数据模块-景点表
     */
    @RequiresPermissions("data:TravelersAttraction:remove")
    @Log(title = "旅行家数据模块-景点表", businessType = BusinessType.DELETE)
	@DeleteMapping("/{AttractionIDs}")
    public AjaxResult remove(@PathVariable Long[] AttractionIDs)
    {
        return toAjax(travelersAttractionService.deleteTravelersAttractionByAttractionIDs(AttractionIDs));
    }
}
