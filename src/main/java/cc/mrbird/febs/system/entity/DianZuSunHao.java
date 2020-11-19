package cc.mrbird.febs.system.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author weiZiHao
 * @date 2020/11/17
 */
@Data
public class DianZuSunHao implements Serializable {


    private static final long serialVersionUID = -4123156022784417532L;

    //一次侧导线截面积mm2
    private Double sh;

    //导线截住面积
    private Double sl;

    //一次侧绕组平均直径 m
    private Double dp1;

    //二次侧绕组平均直径 m
    private Double dp2;

    //一次匝数
    private Double w1;

    //二次匝数
    private Double w2;

    //一次侧的实际相电流
    private Double i1;

    //二次侧的实际相电流
    private Double i2;

    //电阻系数；铜导线电阻系数 ou.mm2/m
    private Double p = 0.02135;

    //π
    private Double π = Math.PI;

}
