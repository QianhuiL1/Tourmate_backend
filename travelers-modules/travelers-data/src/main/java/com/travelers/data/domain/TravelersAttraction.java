package com.travelers.data.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 旅行家数据模块-景点表对象 attraction
 * 
 * @author pinanoria
 * @date 2023-06-23
 */
public class TravelersAttraction extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 景点ID */
    private Long AttractionID;

    /** 名称 */
    @Excel(name = "名称")
    private String AttractionName;

    /** 位置 */
    @Excel(name = "位置")
    private String Location;

    /** 星级 */
    @Excel(name = "星级")
    private Long Star;

    /** 类别 */
    @Excel(name = "类别")
    private String Type;

    /** 评论数 */
    @Excel(name = "评论数")
    private Long Comment;

    /** 介绍 */
    @Excel(name = "介绍")
    private String Description;

    public void setAttractionID(Long AttractionID) 
    {
        this.AttractionID = AttractionID;
    }

    public Long getAttractionID() 
    {
        return AttractionID;
    }
    public void setAttractionName(String AttractionName) 
    {
        this.AttractionName = AttractionName;
    }

    public String getAttractionName() 
    {
        return AttractionName;
    }
    public void setLocation(String Location) 
    {
        this.Location = Location;
    }

    public String getLocation() 
    {
        return Location;
    }
    public void setStar(Long Star) 
    {
        this.Star = Star;
    }

    public Long getStar() 
    {
        return Star;
    }
    public void setType(String Type) 
    {
        this.Type = Type;
    }

    public String getType() 
    {
        return Type;
    }
    public void setComment(Long Comment) 
    {
        this.Comment = Comment;
    }

    public Long getComment() 
    {
        return Comment;
    }
    public void setDescription(String Description) 
    {
        this.Description = Description;
    }

    public String getDescription() 
    {
        return Description;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("AttractionID", getAttractionID())
            .append("AttractionName", getAttractionName())
            .append("Location", getLocation())
            .append("Star", getStar())
            .append("Type", getType())
            .append("Comment", getComment())
            .append("Description", getDescription())
            .toString();
    }
}
