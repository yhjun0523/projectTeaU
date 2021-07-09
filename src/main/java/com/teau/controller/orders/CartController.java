package com.teau.controller.orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.teau.biz.orders.CartService;
import com.teau.biz.orders.CartVO;
import com.teau.biz.shop.ShopService;
import com.teau.biz.shop.ShopVO;

@Controller
@SessionAttributes("cart")
public class CartController {

    @Autowired
    private CartService cartService;

    @Autowired
    private ShopService shopService;

    // TeaId 데리고 카트로 이동 
    @RequestMapping(value = "/cart.do")
    public String cart(@RequestParam("teaId") int teaId, Model model) {
        ShopVO vo = new ShopVO();
        vo.setTeaId(teaId);

        model.addAttribute("cartItem", shopService.getShop(vo));
        return "cart";
    }

    // 장바구니에 상품 추가
    @RequestMapping("/insertCart.do")
    public String insertCart(CartVO vo) throws Exception {

        cartService.insertCart(vo);
        return "cart";

    }

    // 장바구니 상품 개수 수정
    @RequestMapping("/updateCart.do")
    public String updateCart(@ModelAttribute("cart") CartVO vo) {
        //
        
        cartService.updateCart(vo);
        return "redirect:getCartList.do";
    }

    // 장바구니 상품 삭제
    @RequestMapping("/deleteCart.do")
    public String deleteCart(CartVO vo) {

        cartService.deleteCart(vo);
        return "redirect:getCartList.do";

    }

    // 장바구니 목록 보기
    @RequestMapping("/getCartList.do")
    public String getCartList(CartVO vo, Model model) {

        model.addAttribute("cartList", cartService.getCartList(vo));
        return "cart";
    }

}
