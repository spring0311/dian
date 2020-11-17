package cc.mrbird.febs.system.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author weiZiHao
 * @date 2020/11/17
 */
@Data
public class ShaoBeiWenSheng implements Serializable {


    private static final long serialVersionUID = 4342592017922492564L;

    //经验系数
    private Double k;

    //经验系数
    private Double n;

    //绕组散热面单位热负荷 W/m2
    private Double qw;

    //折算到参考温度下的绕组损耗 w
    private Double pw;

    //绕组的有效散热面积 m2
    private Double sw;

}
