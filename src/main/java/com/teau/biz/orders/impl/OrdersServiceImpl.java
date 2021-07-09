package com.teau.biz.orders.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.orders.OrdersService;
import com.teau.biz.orders.OrdersVO;

@Service("orderService")
public class OrdersServiceImpl implements OrdersService {
	
	@Autowired
	private OrdersDAOMybatis OrdersDAO;

	public OrdersServiceImpl() {
	
	}

	@Override
	public List<OrdersVO> getProList(OrdersVO vo) {
		System.out.println("OrderDAO.getProIdList ServiceImpl");
		return OrdersDAO.getProIdList(vo);
	}

	@Override
	public void insertOrders(OrdersVO vo) {
		System.out.println("OrderDAO.insertOrder Service");
		OrdersDAO.insertOrders(vo);
	}

	@Override
	public OrdersVO getOrders(OrdersVO vo) {
		System.out.println("OrdersDAO.getOrders Service");
		return OrdersDAO.getOrders(vo);
	}

}
