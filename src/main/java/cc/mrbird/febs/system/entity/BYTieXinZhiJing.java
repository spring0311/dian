package cc.mrbird.febs.system.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author weiZiHao
 * @date 2020/11/17
 */
@Data
public class BYTieXinZhiJing implements Serializable {


    private static final long serialVersionUID = -726184534904713883L;

    //每柱容量
    private Double sr;

    //经验系数
    private Double kd;
}
