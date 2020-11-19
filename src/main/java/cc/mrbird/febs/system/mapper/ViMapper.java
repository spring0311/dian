package cc.mrbird.febs.system.mapper;

import cc.mrbird.febs.system.entity.Vi;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * Mapper
 *
 * @author weizihao
 * @date 2020-11-19 09:25:03
 */
public interface ViMapper extends BaseMapper<Vi> {

    Vi nearDk(Double ret);

}
