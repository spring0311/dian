package cc.mrbird.febs.system.service;

import cc.mrbird.febs.system.entity.Vi;

import cc.mrbird.febs.common.entity.QueryRequest;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * Service接口
 *
 * @author weizihao
 * @date 2020-11-19 09:25:03
 */
public interface IViService extends IService<Vi> {
    /**
     * 查询（分页）
     *
     * @param request QueryRequest
     * @param vi      vi
     * @return IPage<Vi>
     */
    IPage<Vi> findVis(QueryRequest request, Vi vi);

    /**
     * 查询（所有）
     *
     * @param vi vi
     * @return List<Vi>
     */
    List<Vi> findVis(Vi vi);

    /**
     * 新增
     *
     * @param vi vi
     */
    void createVi(Vi vi);

    /**
     * 修改
     *
     * @param vi vi
     */
    void updateVi(Vi vi);

    /**
     * 删除
     *
     * @param vi vi
     */
    void deleteVi(Vi vi);

    /**
     * 临近值
     *
     * @param ret
     * @return
     */
    Vi getOneVi(Double ret);
}
