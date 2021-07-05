<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!doctype html>
  <html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>Tea-finder</title>


    <!------ Include the above in your HEAD tag ---------->

    <link rel="shortcut icon" href="assets/images/feature/11.jpg">

    <!-- fraimwork - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <!-- icon font - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">

    <!-- animation - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css">

    <!-- carousel - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

    <!-- popup - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/magnific-popup.css">

    <!-- jquery-ui - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/jquery-ui.css">

    <!-- custom - css include -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    
    <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

    <style>
      @font-face {
        font-family: 'JSArirang-Regular';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/JSArirang-RegularA1.woff') format('woff');
        font-weight: normal;
        font-style: normal;
      }

      @font-face {
        font-family: 'ROEHOE-CHAN';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/ROEHOE-CHAN.woff') format('woff');
        font-weight: normal;
        font-style: normal;
      }

      #finder_detail01 .img-responsive {
        margin-left: 20%;
      }

      #finder_detail02 .img-responsive,
      #finder_detail03 .img-responsive {
        margin-left: 29%;
      }


      #finder_detail04 .ul_li_center {
        margin-left: 40%;
        margin-top: 50px;
        margin-bottom: 30px;

      }

      #finder_detail05 .img-responsive {
        margin-left: 13%;
      }

      #finder_detail05 .finder_choice {
        margin-top: 20px;
      }

      .btn {
        background-color: #fd6c44;

      }

      .finder_detail .img-responsive {
        width: 200px;
      }

      .finder_detail .btn-radio {
        width: 100%;
        align-content: center;
        background-color: #fd6c44;
        font-size: large;

      }

      .finder_detail .img-radio {
        opacity: 0.5;
        margin-top: 50px;
        margin-bottom: 30px;
      }

      .finder_detail .space-20 {
        margin-top: 20px;
      }

      .finder_detail .check {
        opacity: 0.5;
        color: #996;

      }

      .finder_detail .answer ul {
        margin: 50px;


      }

      .finder_detail .answer li {
        list-style: none;
        display: inline-block;
        font-size: 1.4rem;
        margin-bottom: 50px;

      }

      .form_element {
        margin-top: 50px;
        margin-left: 30px;
      }


      /* 결과창 */
      .finder_result .list_wrap {
        position: relative;
        padding: 20px 20px;
        height: 100%;

      }

      .finder_result .list_wrap>ul {
        display: flex;
        flex-wrap: wrap;
        margin: 0 -15px;
      }

      .finder_result .list_wrap>ul>li {
        /* position: relative; */
        float: left;
        width: 30%;
        margin: 10px 10px;
        padding: 0 22px;
        border-radius: 1px;
        border: 1px solid #fff;
        background-color: #fff;
        box-shadow: 0 0 24px 0 rgb(0 0 0 / 8%);
        text-align: center;
        vertical-align: top;
      }

      .finder_result .list_wrap>ul>li>div {
        overflow: hidden;
        height: 100%;
        background-color: #fff;
        border-radius: 4px;
      }


      .tea_goods .t_img {
        margin: 20px 0 16px;
      }

      .tea_goods .t_name {
        padding: 0 15px;
        display: block;
        margin: 0 0 5px;
        font-size: 16px;
        font-weight: normal;
      }

      .tea_goods .t_explain {
        font-size: 14px;
        color: #aaa;
      }

      .tea_goods .keyword {
        display: inline-block;
        margin: 20px 1px 3px;
        padding: 1px 10px 0;
        border: 2px solid #eee;
        font-size: 15px;
        color: black;
        background: #fff;
        vertical-align: top;
      }

      .tea_goods .keyword .jamong {
        border: 1px solid #fd6c44;
        background: #fd6c44;
        color: #fff;
      }
    </style>
    
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Sacramento&display=swap" rel="stylesheet">
	
	<script>
	
	$(document).ready(function(){
		 $("#question2").hide();
		 $("#question3").hide();
		 $("#question4").hide();
		 $("#question5").hide();
		 
		 
		  
		  $("#show2").click(function(){
			  $("#question2").show();
		  });
		  
		  $("#show3").click(function(){
			  $("#question3").show();
		  });
		  
		  $("#show4").click(function(){
			  $("#question4").show();
		  });
		  
		  $("#show5").click(function(){
			  $("#question5").show();
		  });
		  
		  
		});
	</script>

  </head>


  <body>

      <!-- header_section - start
      ================================================== -->
      <jsp:include page="header.jsp"></jsp:include>
      <!-- cart_sidebar - end
        ================================================== -->

  
      <section class="breadcrumb_section text-uppercase" style="background-image: url(assets/images/img/banner02.png);">
        <div class="container">
          <h1 class="page_title text-white wow fadeInUp"><span style="color: black;">Tea finder</span></h1>
          <ul class="breadcrumb_nav ul_li wow fadeInUp" data-wow-delay=".2s">
            <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
            <li>my tea finder</li>
          </ul>
        </div>
        <div class="breadcrumb_icon_wrap">
          <div class="container">
            <div class="breadcrumb_icon wow fadeInUp" data-wow-delay=".3s">
              <img src="assets/images/feature/11.jpg" alt="icon_not_found" width="50px">
              <span class="bg_shape"></span>
            </div>
          </div>
        </div>
      </section>
     

      <!-- about_section - start
        ================================================== -->

      <!-- about_section - end
        ================================================== -->
     
	  
	  <form action="teaFind.do" method="post">
      <!-- 티 파인더 선택지 -->
      <section class="contact_section sec_ptb_120 bg_default_gray">
      
      
         <!-- 1번 질문  -->
        <div id="question1" class="container finder_detail q1">
          <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
            <div class="finder_inner box" id="finder_detail01">
              <div class="finder_content">
                <div class="row">
                      <h4>평소에 물을 얼마나 마시나요?</h4>
                      
                      <div class="finder_choice col-md-4 col-xs-4 ">
                        <img src="./assets/images/finder/water1.png" class="img-responsive img-radio ul_li_center"
                          style="height: 200px; ">
                        <button type="button" class="btn btn-primary btn-radio">적게 마심</button>
                        <input type="checkbox" id="left-item" class="hidden" style="display:none">
                      </div>
                      
                      <div class="finder_choice col-md-4 col-xs-4">
                        <img src="./assets/images/finder/water2.png" class="img-responsive img-radio ul_li_center"
                          style="height: 200px; ">
                        <button type="button" class="btn btn-primary btn-radio">보통</button>
                        <input type="checkbox" id="middle-item" class="hidden" style="display:none">
                      </div>
                      
                      <div class="finder_choice col-md-4 col-xs-4">
                        <img src="./assets/images/finder/water3.png" class="img-responsive img-radio ul_li_center"
                          style="height: 200px; ">
                        <button type="button" class="btn btn-primary btn-radio">많이 마심</button>
                        <input type="checkbox" id="right-item" class="hidden" style="display:none">
                      </div>
                      
                  </div>
               </div>
             </div>
           </div>
         </div>
         
          <div>
            <br>
          </div>

          <!-- 2번 질문  -->
          <div id="question2" class="container finder_detail q2">
            <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
              <div class="finder_inner box" id="finder_detail02">
                <div class="finder_content">
                  <div class="row">

                    <h4>좋아하는 차 온도는?</h4>
                    <div class="finder_choice col-md-6 col-xs-6 ">
                      <img src="./assets/images/finder/ice.jpg" class="img-responsive img-radio ul_li_center"
                        style="height: 200px; ">
                      <button type="button" class="btn btn-primary  btn-radio">아이스</button>
                      <input type="checkbox" id="left-item" class="hidden" style="display:none">
                    </div>
                    
                    <div class="finder_choice col-md-6 col-xs-6">
                      <img src="./assets/images/finder/hot.jpg" class="img-responsive  img-radio ul_li_center"
                        style="height: 200px; ">
                      <button type="button" class="btn btn-primary btn-radio">핫</button>
                      <input type="checkbox" id="middle-item" class="hidden" style="display:none">
                    </div>
                    
                 </div>
               </div>
              </div>
             </div>
            </div>

          <div>
            <br>
          </div>

          <!-- 3번 질문  -->
          <div id="question3" class="container finder_detail q3">
            <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
              <div class="finder_inner box" id="finder_detail03">
                <div class="finder_content">
                  <div class="row">

                    <h4>카페인 취향</h4>
                    <div class="finder_choice col-md-6 col-xs-6 ">
                      <img src="./assets/images/finder/caffeine.png" class="img-responsive img-radio ul_li_center"
                        style="height: 200px; ">
                      <button type="button" class="btn btn-primary  btn-radio">카페인 좋아</button>
                      <input type="checkbox" id="left-item" class="hidden" style="display:none">
                    </div>
                    
                    <div class="finder_choice col-md-6 col-xs-6">
                      <img src="./assets/images/finder/decaffeine.png" class="img-responsive  img-radio ul_li_center"
                        style="height: 200px; ">
                      <button type="button" class="btn btn-primary btn-radio">디카페인</button>
                      <input type="checkbox" id="middle-item" class="hidden" style="display:none">
                    </div>
                    
                </div>
               </div>
              </div>
             </div>
            </div>
  
          <div>
            <br>
          </div>


          <!-- 4번 질문  -->
          <div id="question4" class="container finder_detail q4">
            <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
              <div class="finder_inner box" id="finder_detail03">
                <div class="finder_content">
                  <div class="row">
                  
                    <h4>알러지 있으세요?</h4>
                    <img src="./assets/images/finder/allergy.png" class="img-responsive ul_li_center">
       
                    <div class="finder_choice col-md-12 col-xs-12">
                      <ul class="answer text-center">
                        <li>
                          <div class="form_element">
                            <input type="checkbox" id="" name="allergy" value="" /> 견과류
                          </div>
                        </li>
                        <li>
                          <div class="form_element">
                            <input type="checkbox" id="" name="allergy" value="" /> 메밀
                          </div>
                        </li>
                        <li>
                          <div class="form_element">
                            <input type="checkbox" id="" name="allergy" value="" /> 달걀
                          </div>
                        </li>
                        <li>
                          <div class="form_element">
                            <input type="checkbox" id="" name="allergy" value="" /> 향신료
                          </div>
                        </li>
                        <li>
                          <div class="form_element">
                            <input type="checkbox" id="" name="allergy" value="" /> 꽃가루
                          </div>
                        </li>
                        <li>
                          <div class="form_element">
                            <input type="checkbox" id="" name="allergy" value="" /> 향료
                          </div>
                        </li>
                        <li>
                          <div class="form_element">
                            <input type="checkbox" id="" name="allergy" value="" /> 해당없음
                          </div>
                        </li>
                      </ul>
                      <button type="button" class="btn btn-primary btn-radio">선택 완료</button>
                      <input type="checkbox" id="middle-item" class="hidden" style="display:none">
                    </div>
                    
            </div>
           </div>
          </div>
         </div>
        </div>

        <div>
          <br>
        </div>

        <!-- 5번 질문  -->
        <div id="question5" class="container finder_detail q5">
          <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
            <div class="finder_inner box" id="finder_detail05">
              <div class="finder_content">
                <div class="row">
                
                  <h4>무슨 향을 좋아하세요?</h4>
                  <div class="finder_choice col-md-3 col-xs-3 ">
                    <img src="./assets/images/finder/apple.png" class="img-responsive img-radio"
                      style="height: 200px; ">
                    <button type="button" class="btn btn-primary  btn-radio">사과</button>
                    <input type="checkbox" id="left-item" class="hidden" style="display:none">
                  </div>
                  
                  <div class="finder_choice col-md-3 col-xs-3">
                    <img src="./assets/images/finder/berry.png" class="img-responsive  img-radio ul_li_center"
                      style="height: 200px; ">
                    <button type="button" class="btn btn-primary btn-radio">딸기</button>
                    <input type="checkbox" id="middle-item" class="hidden" style="display:none">
                  </div>
                  
                  <div class="finder_choice col-md-3 col-xs-3">
                    <img src="./assets/images/finder/grape.png" class="img-responsive  img-radio ul_li_center"
                      style="height: 200px; ">
                    <button type="button" class="btn btn-primary btn-radio">포도</button>
                    <input type="checkbox" id="middle-item" class="hidden" style="display:none">
                  </div>
                  
                  <div class="finder_choice col-md-3 col-xs-3">
                    <img src="./assets/images/finder/lemon.png" class="img-responsive  img-radio ul_li_center"
                      style="height: 200px; ">
                    <button type="button" class="btn btn-primary btn-radio">시트러스</button>
                    <input type="checkbox" id="middle-item" class="hidden" style="display:none">
                  </div>
                  
             </div>
            </div>
           </div>
          </div>
         </div>

      

        <div>
          <br>
        </div>

        <!-- 이전버튼 다음버튼은 ajax 사용시 필요 -->
        <div class="poll_step_btns" style="text-align: center;">
          <button type="submit" class="btn btn_primary text-uppercase">티 파인더 결과보기</button>
        </div>
	</section>
   </form>
      
<!--         결과 창
        <div class="container finder_result">

          <div class="title text-center">
            <h1>Tea for U</h1>
            <p>티 파인더가 <span>ㅇㅇ</span>님에게 추천하는 차</p>
          </div>
          <div class="content">
            <div class="list_wrap">
              <ul style="list-style: none;">
                <li class="tea_goods" style="min-height: 350px; cursor: pointer" onclick="location.href='#'">
                  <div>
                    <div class="keyword">
                      <span>녹차</span>
                    </div>
                    <div class="t_img">
                      <img src="./assets/images/img/peach.jpg" alt="상품명1">
                    </div>
                    <div class="t_name">
                      <strong class="name">화이트피치 그린티</strong>
                      <p class="t_explain">복숭아 향 가득한 녹차</p>

                    </div>
                  </div>
                </li>
                <li class="tea_goods" style="min-height: 350px; cursor: pointer" onclick="location.href='#'">
                  <div>
                    <div class="keyword">
                      <span>홍차</span>
                    </div>
                    <div class="t_img">
                      <img src="./assets/images/img/sweet.jpg" alt="상품명1">
                    </div>
                    <div class="t_name">
                      <strong class="name">웨딩임페리얼</strong>
                      <p class="t_explain">달콤한 초콜릿과 바닐라향이 밀크티에 제격인 홍차</p>

                    </div>
                  </div>
                </li>
                <li class="tea_goods" style="min-height: 350px; cursor: pointer" onclick="location.href='#'">
                  <div>
                    <div class="keyword">
                      <span>허브티</span>
                    </div>
                    <div class="t_img">
                      <img src="./assets/images/img/lemon.jpg" alt="상품명1">
                    </div>
                    <div class="t_name">
                      <strong class="name">허니 레모네이드</strong>
                      <p class="t_explain">달콤상큼한 레몬허브티</p>

                    </div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div> -->


	    <!-- main body - end
	      ================================================== -->

	    <!-- footer_section - start
	      ================================================== -->
	     <jsp:include page="footer.jsp"></jsp:include>
	    <!-- footer_section - end
	      ================================================== -->
    
	     <!-- fraimwork - jquery include -->
	  <script src="assets/js/jquery.min.js"></script>
	  <script src="assets/js/bootstrap.min.js"></script>
	
	  <!-- animation - jquery include -->
	  <script src="assets/js/wow.min.js"></script>
	
	  <!-- carousel - jquery include -->
	  <script src="assets/js/slick.min.js"></script>
	
	  <!-- popup - jquery include -->
	  <script src="assets/js/magnific-popup.min.js"></script>
	
	  <!-- isotope filter - jquery include -->
	  <script src="assets/js/isotope.pkgd.min.js"></script>
	
	  <!-- jquery-ui - jquery include -->
	  <script src="assets/js/jquery-ui.js"></script>
	
	  <!-- off canvas sidebar - jquery include -->
	  <script src="assets/js/mCustomScrollbar.js"></script>
	
	  <!-- custom - jquery include -->
	  <script src="assets/js/main.js"></script>
	  <script src="assets/js/finder.js"></script>
    
  </body>

  </html>