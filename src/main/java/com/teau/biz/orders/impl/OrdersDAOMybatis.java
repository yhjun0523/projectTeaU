package com.teau.biz.orders.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.orders.OrdersVO;

@Repository
public class OrdersDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public OrdersVO getOrders(OrdersVO vo) {
		System.out.println("mybatis로 getOrders 가져오기");
		return mybatis.selectOne("OrdersDAO.getOrders",vo);
	}

	// 상품 가져오기
	public List<OrdersVO> getProIdList(OrdersVO vo) {
		System.out.println("mybatis로 ProIdList 가져오기");
		return mybatis.selectList("OrdersDAO.getProIdList", vo);
	}
	
	public void insertOrders(OrdersVO vo) {
		System.out.println("mybatis로 insertOrder 연결");
		mybatis.insert("OrdersDAO.insertOrders", vo);
	}
}
