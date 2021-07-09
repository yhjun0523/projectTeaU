package com.teau.biz.orders;

import lombok.Data;

@Data
public class CartVO {
    private int cartId;
    
    private String memberId;
    
    private int teaId;
    
    private int proCnt;

}
