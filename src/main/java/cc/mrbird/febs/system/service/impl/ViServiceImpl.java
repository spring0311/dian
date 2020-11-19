package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.Vi;
import cc.mrbird.febs.system.mapper.ViMapper;
import cc.mrbird.febs.system.service.IViService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Propagation;
import lombok.RequiredArgsConstructor;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.util.List;

/**
 * Service实现
 *
 * @author weizihao
 * @date 2020-11-19 09:25:03
 */
@Service
@RequiredArgsConstructor
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class ViServiceImpl extends ServiceImpl<ViMapper, Vi> implements IViService {


    @Override
    public IPage<Vi> findVis(QueryRequest request, Vi vi) {
        LambdaQueryWrapper<Vi> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        Page<Vi> page = new Page<>(request.getPageNum(), request.getPageSize());
        return this.page(page, queryWrapper);
    }

    @Override
    public List<Vi> findVis(Vi vi) {
        LambdaQueryWrapper<Vi> queryWrapper = new LambdaQueryWrapper<>();
        // TODO 设置查询条件
        return this.baseMapper.selectList(queryWrapper);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void createVi(Vi vi) {
        this.save(vi);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateVi(Vi vi) {
        this.saveOrUpdate(vi);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deleteVi(Vi vi) {
        LambdaQueryWrapper<Vi> wrapper = new LambdaQueryWrapper<>();
        // TODO 设置删除条件
        this.remove(wrapper);
    }

    @Override
    public Vi getOneVi(Double ret) {
        return this.baseMapper.nearDk(ret);
    }
}
