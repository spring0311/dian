package cc.mrbird.febs.system.entity;

import java.util.Date;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

/**
 * Entity
 *
 * @author weizihao
 * @date 2020-11-19 09:25:03
 */
@Data
@TableName("t_vi")
public class Vi {

    /**
     * ID
     */
    @TableId(value = "ID", type = IdType.AUTO)
    private Long id;

    /**
     * 位置
     */
    @TableField("HERE")
    private String here;

    /**
     * 电压
     */
    @TableField("VOLTAGE")
    private String voltage;

    /**
     * 电流
     */
    @TableField("ELECTRICITY")
    private Double electricity;

    /**
     * 损耗
     */
    @TableField("ENERGY")
    private String energy;

    /**
     * 实测电抗
     */
    @TableField("REACTOR")
    private Double reactor;

    /**
     *
     */
    @TableField("CREATE_TIME")
    private Date createTime;

    /**
     *
     */
    @TableField("MODIFY_TIME")
    private Date modifyTime;

}
