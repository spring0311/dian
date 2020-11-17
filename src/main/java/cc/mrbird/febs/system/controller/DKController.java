package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.system.entity.FenJieDianKang;
import cc.mrbird.febs.system.entity.ShaoBeiWenSheng;
import cc.mrbird.febs.system.entity.TieXinZhiJing;
import cc.mrbird.febs.system.entity.ZhuDianKang;
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

    /**
     * Math.sqrt()//计算平方根
     * Math.cbrt()//计算立方根
     * Math.pow(a, b)//计算a的b次方
     * Math.max( , );//计算最大值
     * Math.min( , );//计算最小值
     */

    /**
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

    @GetMapping("zdk")
    public FebsResponse zhudiankang(ZhuDianKang zhuDianKang) {
        System.err.println(zhuDianKang);
        double w2 = Math.pow(zhuDianKang.getW(), 2);
        double ret = ((zhuDianKang.getEπ2() * zhuDianKang.getF() * w2 * zhuDianKang.getA()) / ((zhuDianKang.getN() + 1) * zhuDianKang.getAL())) * zhuDianKang.getEnd();
        return new FebsResponse().success().data(getNumberFormat(ret));
    }

    @GetMapping("sbsw")
    public FebsResponse shaozushengwen(ShaoBeiWenSheng shaoBeiWenSheng) {
        System.err.println(shaoBeiWenSheng);
        if (shaoBeiWenSheng.getQw() == null || "".equals(shaoBeiWenSheng.getQw())) {
            double qw = shaoBeiWenSheng.getPw() / shaoBeiWenSheng.getSw();
            shaoBeiWenSheng.setQw(qw);
        }
        double qwn = Math.pow(shaoBeiWenSheng.getQw(), shaoBeiWenSheng.getN());
        double ret = shaoBeiWenSheng.getK() * qwn;
        return new FebsResponse().success().data(getNumberFormat(ret));
    }

    private String getNumberFormat(double dou) {
        NumberFormat nf = NumberFormat.getNumberInstance();
        nf.setMaximumFractionDigits(2);
        return nf.format(dou);
    }
}
