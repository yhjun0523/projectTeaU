<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
                 "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>

  <!-- 유저 세션 받아오기 -->
  <script src="assets/js/com_lib.js"></script>
  <!-- 제이쿼리  -->
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   
     <script type="text/javascript">
      $(document).ready(function(){
        getMemberInfo();
        logText();
        console.log(id);
        
        
     });
     
     // 전역변수 id 선언
     let id;
     // 전역변수 role 선언
     let role;
     

     // 세션체크 JSON 전송
     function sessionCheck(obj){
        if(obj["member"] != null) {           
           id = obj["member"].memberId;
           role = obj["member"].memberRole
           
        } else{
           id = null;
           role = null;
        }
        console.log(id);
        logText(id);
     }
     
     /*      function sessionCheck(obj){
        id = obj["member"].memberId;
        console.log(id);
        
     } */
     
     </script>



 <!-- body_wrap - start -->
  <div class="body_wrap">

    <!-- backtotop - start -->
    <div class="backtotop">
      <a href="#" class="scroll">
        <i class="far fa-arrow-up"></i>
        <i class="far fa-arrow-up"></i>
      </a>
    </div>
    <!-- backtotop - end -->

    <!-- preloader - start -->
    <div id="preloader"></div>
    <!-- preloader - end -->

    <!-- header_section - start
      ================================================== -->
      <header class="header_section style_3">
        <div class="content_wrap">
          <div class="container maxw_1720">
            <div class="row align-items-center">
  
              <div class="col-lg-2 col-md-6 col-6">
                <div class="brand_logo">
                  <a class="brand_link" href="index.jsp">
                    <img src="assets/images/logo/TeaU.png"
                      alt="logo_not_found">
                  </a>
                </div>
              </div>
  
              <div class="col-lg-10 col-md-6 col-6">
                <nav class="main_menu navbar navbar-expand-lg">
                  <button class="mobile_menu_btn navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#main_menu_dropdown" aria-controls="main_menu_dropdown" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"><i class="fal fa-bars"></i></span>
                  </button>
                  <div class="main_menu_inner collapse navbar-collapse" id="main_menu_dropdown">
                    <ul class="main_menu_list ul_li">
                      <li class="active dropdown">
                        <a class="nav-link" href="subscribe_main.do" id="home_submenu">
                          Subscribe
                        </a>
                      </li>
                      <li class="dropdown">
                        <a class="nav-link" href="#" id="portfolio_submenu" role="button" data-bs-toggle="dropdown"
                          aria-expanded="false">
                          shop
                        </a>
                        <ul class="submenu dropdown-menu" aria-labelledby="portfolio_submenu">
                          <li><a href="shopSeason.do">#계절별</a></li>
                          <li><a href="shopUser.do">#사용자별</a></li>
                          <li><a href="shopBlend.do">#디카페인</a></li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a class="nav-link" href="#" id="services_submenu" role="button" data-bs-toggle="dropdown"
                          aria-expanded="false">
                          board
                        </a>
                        <ul class="submenu dropdown-menu" aria-labelledby="services_submenu">
                          <li><a href="toBoard.do">씨앗 리뷰</a></li>
                            <li><a href="tbBoard.do">새싹&나무 리뷰</a></li>
                            <li><a href="rankBoard.do">새싹&나무 랭킹</a></li>
                            <li><a href="faq.do">F.A.Q.</a></li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a class="nav-link" href="magazine.do" id="experience_submenu">
                          Magazine
                        </a>
                      </li>
                      <li>
                        <a class="nav-link" href="tea_finder.do">Tea finder</a>
                      </li>
                    </ul>
                  </div>
  
                  <ul class="header_btns_group ul_li_right">
                    <li>
                      <button type="button" class="main_search_btn">
                        <a class="fal fa-user" onclick="myAndLog()" style="color: black;" ></a>
                      </button>
                    </li>
                    <li>
                      <button type="button" class="cart_btn">
                        <i class="fal fa-shopping-bag"></i>
                        <small class="cart_counter">2</small>
                      </button>
                    </li>
                    <li>
                      <input type="button" id="logInOut" class="btn btn_primary text-uppercase" value="LogIN" onclick="logInOut()">
                    </li>
                  </ul>
                </nav>
              </div>
  
            </div>
          </div>
        </div>

      <!-- collapse search - start -->
      <div class="main_search_collapse collapse" id="main_search_collapse">
        <div class="main_search_form card">
          <div class="container maxw_1560">
            <form action="#">
              <div class="form_item">
                <input type="search" name="search" placeholder="Search here...">
                <button type="submit" class="submit_btn"><i class="fal fa-search"></i></button>
              </div>
            </form>
          </div>
        </div>
      </div>

      <!-- collapse search - start -->
      <div class="main_search_collapse collapse" id="main_search_collapse">
        <div class="main_search_form card">
          <div class="container maxw_1560">
            <form action="#">
              <div class="form_item">
                <input type="search" name="search" placeholder="Search here...">
                <button type="submit" class="submit_btn"><i class="fal fa-search"></i></button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <!-- collapse search - end -->
    </header>
    <!-- header_section - end
      ================================================== -->

    <!-- main body - start
      ================================================== -->
    <main>

      <!-- cart_sidebar - start
        ================================================== -->
      <div class="sidebar-menu-wrapper">
        <div class="cart_sidebar">
          <button type="button" class="close_btn"><i class="fal fa-times"></i></button>
          <h2 class="heading_title text-uppercase">Cart Items - <span>4</span></h2>

          <div class="cart_items_list">
            <div class="cart_item">
              <div class="item_image">
                <img src="assets/images/recent_post/img_03.jpg" alt="image_not_found">
              </div>
              <div class="item_content">
                <h4 class="item_title">
                  Rorem ipsum dolor sit amet, sectetur adipisi cingey.
                </h4>
                <span class="item_price">$19.00</span>
                <button type="button" class="remove_btn"><i class="fal fa-times"></i></button>
              </div>
            </div>

            <div class="cart_item">
              <div class="item_image">
                <img src="assets/images/recent_post/img_04.jpg" alt="image_not_found">
              </div>
              <div class="item_content">
                <h4 class="item_title">
                  Rorem ipsum dolor sit amet, sectetur adipisi cingey.
                </h4>
                <span class="item_price">$19.00</span>
                <button type="button" class="remove_btn"><i class="fal fa-times"></i></button>
              </div>
            </div>

            <div class="cart_item">
              <div class="item_image">
                <img src="assets/images/recent_post/img_05.jpg" alt="image_not_found">
              </div>
              <div class="item_content">
                <h4 class="item_title">
                  Rorem ipsum dolor sit amet, sectetur adipisi cingey.
                </h4>
                <span class="item_price">$19.00</span>
                <button type="button" class="remove_btn"><i class="fal fa-times"></i></button>
              </div>
            </div>

            <div class="cart_item">
              <div class="item_image">
                <img src="assets/images/recent_post/img_06.jpg" alt="image_not_found">
              </div>
              <div class="item_content">
                <h4 class="item_title">
                  Rorem ipsum dolor sit amet, sectetur adipisi cingey.
                </h4>
                <span class="item_price">$19.00</span>
                <button type="button" class="remove_btn"><i class="fal fa-times"></i></button>
              </div>
            </div>
          </div>
          <div class="total_price text-uppercase">
            <span>Sub Total:</span>
            <span>$76.00</span>
          </div>
          <ul class="btns_group ul_li">
            <li><a href="cart.do" class="btn btn_primary text-uppercase">View Cart</a></li>
            <li><a href="checkout.do" class="btn btn_border border_black text-uppercase">Checkout</a></li>
          </ul>
        </div>
        <div class="cart_sidebar_overlay"></div>
      </div>
      <!-- cart_sidebar - end
        ================================================== -->
</body>
</html>