package com.teau.controller.orders;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.teau.biz.orders.OrdersService;
import com.teau.biz.orders.OrdersVO;

@Controller
public class OrdersController {
   
   @Autowired
   private OrdersService ordersService;
   
   // 주문 페이지 이동
   @RequestMapping(value="/insertOrdersView.do")
   public String insertOrdersView(@RequestParam("teaId") int teaId, Model model) throws IOException{
      System.out.println("insertOrdersView.do 확인");
      
        OrdersVO vo = new OrdersVO(); 
        vo.setProId(teaId);
        
        model.addAttribute("orders", ordersService.getOrders(vo));
             
      return "orders";
   }
   
   // 주문 추가 기능 처리
   @RequestMapping("/insertOrders.do")
   public String insertOrders(OrdersVO vo, Model model) throws IOException{
      System.out.println("주문 추가 성공");
      ordersService.insertOrders(vo);
      return "redirect:mypage.do";
   }

}