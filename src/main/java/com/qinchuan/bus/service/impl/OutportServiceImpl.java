package com.qinchuan.bus.service.impl;

import com.qinchuan.bus.entity.Goods;
import com.qinchuan.bus.entity.Inport;
import com.qinchuan.bus.entity.Outport;
import com.qinchuan.bus.mapper.GoodsMapper;
import com.qinchuan.bus.mapper.InportMapper;
import com.qinchuan.bus.mapper.OutportMapper;
import com.qinchuan.bus.service.IOutportService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.qinchuan.sys.common.WebUtils;
import com.qinchuan.sys.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * <p>
 * InnoDB free: 9216 kB 服务实现类
 * </p>
 */
@Service
public class OutportServiceImpl extends ServiceImpl<OutportMapper, Outport> implements IOutportService {

    @Autowired
    private InportMapper inportMapper;

    @Autowired
    private GoodsMapper goodsMapper;

    /**
     * @param id    进货单ID
     * @param number    退货数量
     * @param remark    备注
     */
    @Override
    public void addOutport(Integer id, Integer number, String remark) {
        //1.通过进货单ID查询出进货单信息
        Inport inport = inportMapper.selectById(id);
        //2.根据商品ID查询商品信息
        Goods goods = goodsMapper.selectById(inport.getGoodsid());
        //3.修改商品的数量     商品的数量-退货的数量
        goods.setNumber(goods.getNumber()-number);

        //修改进货的数量
        inport.setNumber(inport.getNumber()-number);
        inportMapper.updateById(inport);

        //4.进行修改
        goodsMapper.updateById(goods);

        //5.添加退货单信息
        Outport outport = new Outport();
        outport.setGoodsid(inport.getGoodsid());
        outport.setNumber(number);
        User user = (User) WebUtils.getSession().getAttribute("user");
        outport.setOperateperson(user.getName());

        outport.setOutportprice(inport.getInportprice());

        outport.setPaytype(inport.getPaytype());
        outport.setOutputtime(new Date());
        outport.setRemark(remark);
        outport.setProviderid(inport.getProviderid());
        getBaseMapper().insert(outport);
    }
}
