package cc.mrbird.febs.system.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author weiZiHao
 * @date 2020/11/17
 */
@Data
public class TieXinZhongLiang implements Serializable {


    private static final long serialVersionUID = 6229482100818372709L;

    //铁心的中心距（mm）
    private Double m0;

    //铁心的窗高(mm)
    private Double h0;

    //铁轭高(mm)
    private Double h3;

    //铁心柱净截面积cm2
    private Double az;

    //固定数值
    private Double end = 7.65 * (Math.pow(10, -4));

}
