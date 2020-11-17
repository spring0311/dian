package cc.mrbird.febs.system.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author weiZiHao
 * @date 2020/11/17
 */
@Data
public class TieXinZhiJing implements Serializable {


    private static final long serialVersionUID = -1349822815520766639L;
    //额定容量
    private Double se;

    //装有线圈的铁心柱数
    private Double m2;

    //经验系数
    private Double kd;
}
