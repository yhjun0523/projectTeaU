package com.teau.controller.order;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teau.biz.orders.OrdersService;
import com.teau.biz.orders.OrdersVO;

@Controller
public class OrderController {

	@Autowired
	private OrdersService ordersService;
	
	// 주문 추가 기능 처리
	@RequestMapping("/insertOrders.do")
	public String insertOrder(OrdersVO vo, Model model) throws IOException{
		System.out.println("주문 추가 성공");
		ordersService.insertOrders(vo);
		return "redirect:mypage.do";
	}

}
