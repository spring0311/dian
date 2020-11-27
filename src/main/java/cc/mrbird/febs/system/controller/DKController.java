package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.system.entity.*;
import cc.mrbird.febs.system.service.IViService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.NumberFormat;

/**
 * @author weiZiHao
 * @date 2020/11/17
 */
@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("dk")
public class DKController extends BaseController {

    private final IViService viService;

    /**
     * Math.sqrt()//计算平方根
     * Math.cbrt()//计算立方根
     * Math.pow(a, b)//计算a的b次方
     * Math.max( , );//计算最大值
     * Math.min( , );//计算最小值
     */

    /**
     * 分接电抗计算
     *
     * @param fenJieDianKang
     * @return
     */
    @GetMapping("fjdk")
    public FebsResponse fenjiediankang(FenJieDianKang fenJieDianKang) {
        System.err.println(fenJieDianKang);
        double w = fenJieDianKang.getW();
        double wf = fenJieDianKang.getWf();
        double xm = fenJieDianKang.getXm();
        double ret = xm * (Math.pow(wf, 2) / Math.pow(w, 2));
        return new FebsResponse().success().data(getNumberFormat(ret));
    }

    /**
     * 铁芯直径
     *
     * @param tieXinZhiJing
     * @return
     */
    @GetMapping("txzj")
    public FebsResponse tiexinzhijing(TieXinZhiJing tieXinZhiJing) {
        System.err.println(tieXinZhiJing);
        double kd = tieXinZhiJing.getKd();
        double m2 = tieXinZhiJing.getM2();
        double se = tieXinZhiJing.getSe();
        double f4 = Math.pow(se / m2, 0.25);
        double ret = kd * f4;
        return new FebsResponse().success().data(getNumberFormat(ret));
    }

    /**
     * 主电抗
     *
     * @param zhuDianKang
     * @return
     */
    @GetMapping("zdk")
    public FebsResponse zhudiankang(ZhuDianKang zhuDianKang) {
        System.err.println(zhuDianKang);
        double w2 = Math.pow(zhuDianKang.getW(), 2);
        double ret = ((zhuDianKang.getEπ2() * zhuDianKang.getF() * w2 * zhuDianKang.getA()) / ((zhuDianKang.getN() + 1) * zhuDianKang.getAL())) * zhuDianKang.getEnd();
        return new FebsResponse().success().data(getNumberFormat(ret));
    }

    /**
     * 绕组温升计算
     *
     * @param shaoBeiWenSheng
     * @return
     */
    @GetMapping("sbsw")
    public FebsResponse shaozushengwen(ShaoBeiWenSheng shaoBeiWenSheng) {
        System.err.println(shaoBeiWenSheng);
       /* if (shaoBeiWenSheng.getQw() == null || "".equals(shaoBeiWenSheng.getQw())) {
        }*/
        double qw = shaoBeiWenSheng.getPw() / shaoBeiWenSheng.getSw();
        double qwn = Math.pow(qw, shaoBeiWenSheng.getN());
        double ret = shaoBeiWenSheng.getK() * qwn;
        return new FebsResponse().success().data(getNumberFormat(ret));
    }

    /**
     * 电抗数值计算
     *
     * @param dianKangShuZhi
     * @return
     */
    @GetMapping("dksz")
    public FebsResponse diankangshuzhi(DianKangShuZhi dianKangShuZhi) {
        System.err.println(dianKangShuZhi);
        Double retD = dianKangShuZhi.getU() / (dianKangShuZhi.getI() - 1) - (dianKangShuZhi.getZ0() + dianKangShuZhi.getZLine());
        Vi vi = viService.getOneVi(retD);
        String ret = "位置:" + vi.getHere() + ",电压:" + vi.getVoltage() + ",电流:" + vi.getElectricity() + ",损耗:" + vi.getEnergy() + ",实测电抗:" + vi.getReactor();
        return new FebsResponse().success().data(ret);
    }

    /**
     * 保留两位
     *
     * @param dou
     * @return
     */
    private String getNumberFormat(double dou) {
        NumberFormat nf = NumberFormat.getNumberInstance();
        nf.setMaximumFractionDigits(2);
        return nf.format(dou);
    }
}
