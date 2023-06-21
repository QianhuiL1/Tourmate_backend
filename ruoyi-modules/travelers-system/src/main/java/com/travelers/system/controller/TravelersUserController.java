package com.travelers.system.controller;

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
import com.travelers.system.domain.TravelersUser;
import com.travelers.system.service.ITravelersUserService;
import com.ruoyi.common.core.web.controller.BaseController;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.common.core.utils.poi.ExcelUtil;
import com.ruoyi.common.core.web.page.TableDataInfo;

/**
 * 旅行家系统用户模块Controller
 * 
 * @author pinanoria
 * @date 2023-06-21
 */
@RestController
@RequestMapping("/TravelersUser")
public class TravelersUserController extends BaseController
{
    @Autowired
    private ITravelersUserService travelersUserService;

    /**
     * 查询旅行家系统用户模块列表
     */
    @RequiresPermissions("system:TravelersUser:list")
    @GetMapping("/list")
    public TableDataInfo list(TravelersUser travelersUser)
    {
        startPage();
        List<TravelersUser> list = travelersUserService.selectTravelersUserList(travelersUser);
        return getDataTable(list);
    }

    /**
     * 导出旅行家系统用户模块列表
     */
    @RequiresPermissions("system:TravelersUser:export")
    @Log(title = "旅行家系统用户模块", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, TravelersUser travelersUser)
    {
        List<TravelersUser> list = travelersUserService.selectTravelersUserList(travelersUser);
        ExcelUtil<TravelersUser> util = new ExcelUtil<TravelersUser>(TravelersUser.class);
        util.exportExcel(response, list, "旅行家系统用户模块数据");
    }

    /**
     * 获取旅行家系统用户模块详细信息
     */
    @RequiresPermissions("system:TravelersUser:query")
    @GetMapping(value = "/{UserID}")
    public AjaxResult getInfo(@PathVariable("UserID") Long UserID)
    {
        return success(travelersUserService.selectTravelersUserByUserID(UserID));
    }

    /**
     * 新增旅行家系统用户模块
     */
    @RequiresPermissions("system:TravelersUser:add")
    @Log(title = "旅行家系统用户模块", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody TravelersUser travelersUser)
    {
        return toAjax(travelersUserService.insertTravelersUser(travelersUser));
    }

    /**
     * 修改旅行家系统用户模块
     */
    @RequiresPermissions("system:TravelersUser:edit")
    @Log(title = "旅行家系统用户模块", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody TravelersUser travelersUser)
    {
        return toAjax(travelersUserService.updateTravelersUser(travelersUser));
    }

    /**
     * 删除旅行家系统用户模块
     */
    @RequiresPermissions("system:TravelersUser:remove")
    @Log(title = "旅行家系统用户模块", businessType = BusinessType.DELETE)
	@DeleteMapping("/{UserIDs}")
    public AjaxResult remove(@PathVariable Long[] UserIDs)
    {
        return toAjax(travelersUserService.deleteTravelersUserByUserIDs(UserIDs));
    }
}
