package cc.mrbird.febs.system.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author weiZiHao
 * @date 2020/11/17
 */
@Data
public class ZhuDianKang implements Serializable {


    private static final long serialVersionUID = -814162178624010740L;


    //等效磁面积
    private Double a;

    //f
    private Double f = 50.00;

    //铁芯饼组数
    private Double n;

    //气隙长度
    private Double aL;

    //最大匝数
    private Double w;

    //8π2
    private Double eπ2 = Math.pow(Math.PI, 2) * 8;

    //10-7
    private Double end = Math.pow(10, -7);
}
