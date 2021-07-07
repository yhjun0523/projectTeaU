package com.teau.biz.orders;

import java.util.List;

public interface OrdersService {
	List<OrdersVO> getProList(OrdersVO vo);
	
	OrdersVO getOrders(OrdersVO vo);
	
	void insertOrders(OrdersVO vo);
}