package cc.mrbird.febs.system.entity;

import lombok.Data;

import java.io.Serializable;

/**
 * @author weiZiHao
 * @date 2020/11/17
 */
@Data
public class FenJieDianKang implements Serializable {

    private static final long serialVersionUID = -1387051685352319954L;

    //主电抗
    private Double xm;

    //分接电抗所对应的匝数
    private Double wf;

    //线圈最大匝数
    private Double w;
}
