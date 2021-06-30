<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
      <!DOCTYPE html>
      <html lang="en">

      <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">

        <title>My page</title>
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
        <link rel="stylesheet" type="text/css" href="assets/css/teau.css">
      </head>

      <body>

        <jsp:include page="header.jsp"></jsp:include>
        <!-- contact_section - start
        ================================================== -->
        <section class="contact_section sec_ptb_120 bg_default_gray">
          <!--회원이름&포인트-->
          <div class="container">
            <div class="contact_form bg_white">
              <div class="row">
                <div class="offset-md-1 col-md-3">
                  <div class="item_content img-fluid">
                    <h3><i class="fas fa-user"></i>티유 님 </h3>
                  </div>
                </div>
                <div class="offset-md-3 col-md-5">
                  <div class="item_content">
                    <h3 class="item_title text-uppercase">보유 포인트 : ${member.memberPoint}</h3>
                    <br>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <br>
          <div class="container">
            <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
              <!-- 회원 정보 불러오기 -->
              <!-- <form action="#"> -->

              <div class="hi container">
                <div class="hi section">
                  <div class="row">
                    <div class="col-sm-9">
                      <h3>내 정보</h3><br>
                      <table class="hi table table-divider">
                        <tbody>
                          <tr>
                            <th class="hi width-xsmall">아이디<span class="hi text-danger">*</span></th>
                            <td>${member.memberId }</td>
                          </tr>
                          <tr>
                            <th class="hi width-xsmall">이름<span class="hi text-danger">*</span></th>
                            <td>${member.memberName }</td>
                          </tr>
                          <tr>
                            <th class="hi width-xsmall">이메일 주소<span class="hi text-danger">*</span></th>
                            <td>${member.memberEmail }</td>
                          </tr>
                          <tr>
                            <th class="hi width-xsmall">전화번호<span class="hi text-danger">*</span></th>
                            <td>${member.memberPhone }</td>
                          </tr>

                          <!-- <tr>
                              <th class="hi width-xsmall">회원 등급</th>
                              <td>그린티회원</td>
                            </tr> -->
                          <!-- <tr>
                            <th class="hi width-xsmall">포인트</th>
                            <td>3000</td>
                          </tr> -->

                          <tr>
                            <th class="hi width-xsmall">주소</th>
                            <td>${member.memberAddress }</td>
                          </tr>

                          <!-- <tr>
                                <th class="hi width-xsmall">최근 로그인</th>
                                <td>2021-05-27</td>
                              </tr> -->
                        </tbody>
                      </table>
                    </div>

                    <div class="col-sm-3">
                      <h3>회원 정보</h3>
                      <hr class="hi hr">

                      <ul class="hi list-menu">
                        <li><a href="mypage_edit.do">회원정보 변경</a></li>
                        <li><a href="#" onclick="deleteMem()">회원탈퇴</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>


              <!-- <div class="text-center">
                  <button type="submit" class="btn btn_primary text-uppercase">Send massage</button>
                </div> -->
              <!-- </form> -->
            </div>
          </div>
          <br>

          <!-- 구독정보 -->
          <div id="subscribe_order" class="container">
            <div class="contact_form bg_white">
              <h3>구독 정보</h3><br>
              <ul>
                <li>
                  <div class="row">
                    <div class="col-md-4 col-xs-4">
                      <div class="item_content">
                        <img src="./assets/images/finder/3.jpg" class="img-responsive">
                      </div>
                    </div>

                    <div class="col-md-7 col-xs-4">
                      <form method="POST">
                        <input type="hidden" id="memberId" name="memberId" value="${sub.subUser}">
                        <div class="item_content">
                          <div>
                            <div>
                              <div>

                                <br>
                                <h5>${sub.orderCate}구독 </h5>
                                <button type="button" class="btn btn-primary btn-radio"
                                  onclick="update_Check();">수정</button>
                                <button type="button" class="btn btn-primary btn-radio"
                                  onclick="deletesub();">해지</button>
                                </h5>
                              </div>
                              <hr>
                              <div>
                                <dt>주문번호(구독번호)</dt>
                                <dd>
                                  <fmt:formatDate value="${sub.subDate}" pattern="yyyyMMdd" />${sub.subId}
                                </dd>
                              </div>
                              <div>
                                <dt>결제금액</dt>
                                <dd>${sub.subPrice}원/월</dd>
                              </div>
                              <div>
                                <dt>취향선택</dt>
                                <dd>${sub.tagSeason} ${sub.tagBase} ${sub.tagDrink}
                                  ${sub.tagBlend} ${sub.tagTaste} ${sub.tagCaff} ${sub.tagEffect}
                                  ${sub.treeSelect} </dd>
                              </div>
                            </div>

                          </div>
                        </div>
                      </form>
                    </div>
                  </div>

                </li>
              </ul>
            </div>
          </div>
          <br>

          <!--배송정보-->
          <div class="container">
            <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">

              <div class="main_contact_info_wrap">

                <div class="contact_info_item">

                  <div class="item_icon"><i class="fas fa-archive"></i></div>
                  <div class="item_content">
                    <h3 class="item_title text-uppercase">상품 준비중</h3>
                    <p>고객님의 상품을 준비중입니다.</p>

                  </div>
                </div>
                <div class="contact_info_item">
                  <div class="item_icon"><i class="fas fa-truck"></i></div>
                  <div class="item_content">
                    <h3 class="item_title text-uppercase">배송중</h3>
                    <p>배송이 시작되었습니다.</p>
                    <p>잠시만 기다려주세요!</p>
                  </div>
                </div>
                <div class="contact_info_item">
                  <div class="item_icon"><i class="fas fa-home"></i></div>
                  <div class="item_content">
                    <h3 class="item_title text-uppercase">배송완료</h3>
                    <p>배송이 완료되었습니다.</p>
                    <p>후기를 남겨주세요!</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <br>

          <div class="container">
            <div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
              <!-- <div class="main_contact_info_wrap"> -->
              <div class="head_aticle">
                <h3>주문/배송내역</h3>
                <br>
              </div>

              <div id="viewOrderLIst" class="">
                <div class="search_date">
                </div>
                <div>
                  <ul class="list_order">
                    <li class="order_item">
                      <div class="row order_header">
                        <div class="col-md-9 col-xs-9">
                          <div class="order_date">
                            <dt> 2021.06.01 (18시 31분) </dt>
                          </div>
                          <div class="order_name">
                            <a href="/buy_detail.html">
                              <h5>제주영귤차 외 2종</h5>
                            </a>
                          </div>
                        </div>
                        <div class="col-md-3 col-xs-3 order_button ">
                          <span class="button"><a class="link">주문취소</a></span>
                          <span class="button"><a class="link">1:1문의</a></span>
                        </div>
                      </div>
                      <hr>
                      <div class="row order_info">
                        <div class="col-xs-9 order_goods">
                          <div class="order_id">
                            <dt>주문번호</dt>
                            <a href="#">
                              <dd>202106011831</dd>
                            </a>
                          </div>
                          <div class="order_price">
                            <dt>결제금액</dt>
                            <dd>25,000원</dd>
                          </div>
                          <div class="order_status">
                            <dt>주문상태</dt>
                            <dd>배송중</dd>
                            <button>배송조회</button>
                          </div>
                        </div>

                      </div>
                    </li>

                    <li class="order_item">
                      <div class="row order_header">
                        <div class="col-md-9 col-xs-9">
                          <div class="order_date">
                            <dt>2021.06.01 (18시 31분) </dt>
                          </div>
                          <div class="order_name">
                            <a href="/buy_detail.html">
                              <h5>제주영귤차 외 2종</h5>
                            </a>
                          </div>
                        </div>
                        <div class="col-md-3 col-xs-3 order_button ">
                          <span class="button"><a class="link">주문취소</a></span>
                          <span class="button"><a class="link">1:1문의</a></span>
                        </div>
                      </div>
                      <hr>
                      <div class="row order_info">
                        <div class="col-xs-9 order_goods">
                          <div class="order_id">
                            <dt>주문번호</dt>
                            <a href="#">
                              <dd>202106011831</dd>
                            </a>
                          </div>
                          <div class="order_price">
                            <dt>결제금액</dt>
                            <dd>25,000원</dd>
                          </div>
                          <div class="order_status">
                            <dt>주문상태</dt>
                            <dd>배송중</dd>
                            <button>배송조회</button>
                          </div>
                        </div>

                      </div>
                    </li>

                  </ul>
                </div>
              </div>


        </section>
        <!-- contact_section - end
        ================================================== -->

        </main>
        <!-- main body - end
      ================================================== -->

        <jsp:include page="footer.jsp"></jsp:include>
        <script>


          $(document).ready(function () {
            // 구독 내역 없을 시 구독정보 박스 숨기기

            console.log("${sub.orderCate}");
            if ("${sub.orderCate}" == "") {
              //document.getElementByid("subscribe_order").sytle.display="none";
              $("#subscribe_order").hide();

            } else {
              //document.getElementByid("subscribe_order").sytle.display="none";
              $("#subscribe_order").show();

            }
          })

          function update_Check() {

            var check = "${sub.orderCate}";

            if (check == "씨앗") {
              var seed = "seed";
              updateJson(seed);
            } else if (check == "새싹") {
              var leaf = "leaf";
              updateJson(leaf);
            } else if (check == "나무") {
              var tree = 'tree';
              updateJson(tree);
            }
          }


          function updateJson(param) {

            var memberId = $('#memberId').val();
            $.ajax({
              type: 'POST',
              url: param + 'UpdateLoad.do',
              dataType: 'text',
              // id만 보내주면 되서 시리얼라이즈는 하지 않음
              data: { 'memberId': memberId },

              success: function (data) {
                console.log(data);
                //서버가 보내준 data(유저의 선택)을 JSON 문자열(스트링)로 변환한다
                window.location.href = ("subscribe_" + param + ".do?data=" + encodeURIComponent(JSON.stringify(data)));
              },
              error: function (e) {
                console.log(e);
              }
            });


          }


          function deletesub() {

            if (confirm("정말로 해지하시겠습니까?") == true) {
              if ("${sub.orderCate}" == "씨앗") {
                location.href = "deleteSubSeed.do";
              }
              else if ("${sub.orderCate}" == "새싹") {
                location.href = "deleteSubLeaf.do";
              } else if ("${sub.orderCate}" == "나무") {
                location.href = "deleteSubTree.do";
              }
            }

          }

          function deleteMem() {
            if (confirm("정말로 탈퇴하시겠습니까?") == true) {
              location.href = "deleteMember.do";
            }
          }

        </script>
      </body>

      </html>