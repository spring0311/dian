package cc.mrbird.febs.system.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author weiZiHao
 * @date 2020/11/17
 */
@Data
public class DianKangShuZhi implements Serializable {


    private static final long serialVersionUID = 2608347833106479469L;

    //融冰电流 Zadj=U/(I-1)-( Z0+ Zline)
    private Double i;

    //电压数值 V
    private Double u = 5778.0;

    //接地变压器的阻抗大小，单位为Ω
    private Double z0 = 1.3;

    //线路的阻抗大小为1.71，单位为Ω
    private Double zLine = 1.71;
}
