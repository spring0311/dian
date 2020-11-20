package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.system.entity.BYTieXinZhiJing;
import cc.mrbird.febs.system.entity.DianZuSunHao;
import cc.mrbird.febs.system.entity.TieXinZhongLiang;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
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
@RequestMapping("by")
public class BYController extends BaseController {


    /**
     * 铁芯直径
     *
     * @param tieXinZhiJing
     * @return
     */
    @GetMapping("txzj")
    public FebsResponse tixxinzhijing(BYTieXinZhiJing tieXinZhiJing) {
        System.err.println(tieXinZhiJing);
        double k4 = Math.pow(tieXinZhiJing.getSr(), 0.25);
        double ret = tieXinZhiJing.getKd() * k4;
        return new FebsResponse().success().data(getNumberFormat(ret));
    }

    /**
     * 铁芯重量
     *
     * @param tieXinZhongLiang
     * @return
     */
    @GetMapping("txzl")
    public FebsResponse tiexinzhongliang(TieXinZhongLiang tieXinZhongLiang) {
        System.err.println(tieXinZhongLiang);
        double gz = 3 * tieXinZhongLiang.getAz() * tieXinZhongLiang.getH0() * tieXinZhongLiang.getEnd();
        double ge = 4 * tieXinZhongLiang.getM0() * tieXinZhongLiang.getAz() * tieXinZhongLiang.getEnd();
        double g3 = tieXinZhongLiang.getAz() * tieXinZhongLiang.getH3() * tieXinZhongLiang.getEnd();
        double gfe = gz + ge + g3;
        return new FebsResponse().success().data(getNumberFormat(gfe));
    }

    /**
     * 绕组电阻及电阻损耗计算
     *
     * @param dianZuSunHao
     * @return
     */
    @GetMapping("dzsh")
    public FebsResponse dianzusunhao(DianZuSunHao dianZuSunHao) {
        System.err.println(dianZuSunHao);
        double r1 = dianZuSunHao.getP() * ((dianZuSunHao.getW1() * dianZuSunHao.getΠ() * dianZuSunHao.getDp1()) / dianZuSunHao.getSh());
        double r2 = dianZuSunHao.getP() * ((dianZuSunHao.getW2() * dianZuSunHao.getΠ() * dianZuSunHao.getDp2()) / dianZuSunHao.getSl());
        double i12 = Math.pow(dianZuSunHao.getI1(), 2);
        double i22 = Math.pow(dianZuSunHao.getI2(), 2);
        double p = 3 * i12 * r1 + 3 * i22 * r2;
        String ret = "一次侧绕组电阻:" + getNumberFormat(r1) + ";二次侧绕组电阻:" + getNumberFormat(r2) + ";电阻损耗:" + getNumberFormat(p);
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
