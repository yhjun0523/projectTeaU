<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <% String msg=(String)request.getAttribute("msg"); %>
    <!DOCTYPE html>
    <html lang="en">

    <head>

      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta http-equiv="x-ua-compatible" content="ie=edge">

      <title>contact</title>
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


      <style>
        /* 배경 */

        html,
        .login {
          background-image: url(./assets/images/finder/2.jpg);
          background-repeat: no-repeat;
          background-size: cover;
          background-position: center;
        }

        /* 로그인 창 */
        #logreg-forms {
          width: 412px;
          margin: 10vh auto;
          background-color: #ffffff;
          opacity: 0.95;
          box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
          transition: all 0.3s cubic-bezier(.25, .8, .25, 1);
        }


        #logreg-forms form {
          width: 100%;
          max-width: 410px;
          padding: 15px;
          margin: auto;
        }

        #logreg-forms .form-control {
          position: relative;
          box-sizing: border-box;
          height: auto;
          padding: 10px;
          font-size: 16px;
        }

        #logreg-forms .form-control:focus {
          z-index: 2;
        }

        #logreg-forms .form-signin input[type="email"] {
          margin-bottom: -1px;
          border-bottom-right-radius: 0;
          border-bottom-left-radius: 0;
        }

        #logreg-forms .form-signin input[type="password"] {
          border-top-left-radius: 0;
          border-top-right-radius: 0;
        }

        #logreg-forms .social-login {
          width: 390px;
          margin: 0 auto;
          margin-bottom: 14px;
        }

        #logreg-forms .social-btn {
          font-weight: 100px;
          color: whitesmoke;
          width: 190px;
          font-size: 0.9rem;
        }

        #logreg-forms a {
          display: block;
          padding-top: 10px;
          color: #fd6c44;
        }

        #logreg-form .lines {
          width: 200px;
          border: 1px solid red;
        }

        /* 버튼 */

        #logreg-forms button[type="submit"] {
          margin-top: 10px;
        }

        #logreg-forms .form-reset,
        #logreg-forms .form-signup {
          display: none;
        }

        #logreg-forms .form-signup .social-btn {
          width: 210px;
        }

        #logreg-forms .form-signup input {
          margin-bottom: 2px;
        }

        .form-signup .social-login {
          width: 210px !important;
          margin: 0 auto;
        }

        /* sns 버튼 */

        .blind {
          display: none;
        }

        /* .link {
    padding: 0;
    margin: 0;
    border: none;
    background: 0 0;
    outline: 0;
    cursor: pointer;
    text-align: center;
} */

        .link.social {
          display: inline-block;
        }

        .link.social.kakao {
          background-image: url(./assets/images/finder/kakao1.png);
          background-size: cover;
          width: 60px;
          height: 60px;
        }

        .link.social.naver {
          background-image: url(./assets/images/finder/naver.png);
          background-size: cover;
          width: 60px;
          height: 60px;
        }
      </style>

    </head>

    <body>
      <jsp:include page="header.jsp"></jsp:include>
      <main class="login">

        <!-- cart_sidebar - start
        ================================================== -->
        <!-- cart_sidebar - end
        ================================================== -->

        <!-- breadcrumb_section - start
        ================================================== -->
        <!-- <section class="breadcrumb_section text-uppercase" style="background-image: url(./assets/images/logo/signUp.png);">
        </section> -->
        <!-- breadcrumb_section - end
        ================================================== -->

        <!-- 로그인
        ================================================== -->
        <section class="login sec_ptb_120" style="padding-top: 200px;">
          <div id="logreg-forms">
            <!--   <form class="form-signin"> -->
            <h1 class="font-weight-normal" style="text-align: center"> Log In </h1>
            <br>
            <!-- <div class="social-login">
                    <button class="btn naver-btn social-btn" type="button"><span> 네이버 로그인 </span> </button>
                    <button class="btn kakao-btn social-btn" type="button"><span> 카카오톡 로그인 </span> </button>
                </div> -->

            <form action="loginView.do" method="POST">
              <p style="text-align:left; margin: 10px 0 0 1px;"> 아이디 </p>
              <input type="text" id="inputId" name="memberId" class="form-control" placeholder="아이디를 입력하세요" required
                autofocus />
              <p style="text-align:left; margin: 10px 0 0 1px;"> 비밀번호 </p>
              <input type="password" id="inputPassword" name="memberPass" class="form-control" placeholder="비밀번호를 입력하세요"
                required />

              <div style="text-align: center;">
                <input value="로그인" class="btn btn-success btn-block" type="submit"
                  style="background-color: #fd6c44; margin-top: 10%; font-size: large;" />
                <!-- <button class="btn btn-success btn-block" type="submit" >네이버 로그인</button>
                  <button class="btn btn-success btn-block" type="submit">카카오 로그인</button> -->
              </div>
            </form>



            <a href="#" id="forgot_pswd" style="text-align: right;">비밀번호 찾기</a>
            <hr>
            <div style="text-align: center; ">
              <nav class="sns_login">
                <p class="sns">sns 계정으로 간편 로그인</p>
                <div class="socials">
                  <ul style="list-style: none; padding:0px;">
                    <li style="display:inline-block">
                      <a href="#" class="link social naver">
                        <span class="blind">네이버 로그인</span>
                      </a>
                    </li>
                    <li style="display:inline-block">
                      <a href="#" class="link social kakao">
                        <span class="blind">카카오 로그인</span>
                      </a>
                    </li>
                </div>
                </ul>
                <div>
                  <button type="button" onclick="location.href='signup.do'" class="btn btn-primary btn-block"
                    style=" background-color: #fd6c44; font-size: large;" type="button" id="btn-signup">
                    <i class="fas fa-user-plus"></i> 회원가입 </button>
                </div>
                <!-- <div class="member_sns_login">
                      <button class="btn naver-btn social-btn" type="button"><span> 네이버 로그인 </span> </button>
                      <button class="btn kakao-btn social-btn" type="button"><span> 카카오톡 로그인 </span> </button>
                      <a href="#" class="btn_naver_login js_btn_naver_login" href="#" data-naver-url="https://socialmember.godo.co.kr/NaverLogin/naver_api.php?mode=login&response_type=code&client_id=EtOe6UqypBxWNZV7RXvx&redirect_uri=https%3A%2F%2Fwww.bottleworks.co.kr%3A443&state=aecec0228b71deed60865e8ae7f863dc"><img src="/data/skin/front/kaimen_pc/img/etc/pc_naver.png" alt="네이버 아이디 로그인"></a>
                      <a href="#" class="btn_kakao_login js_btn_kakao_login" data-kakao-type="login" data-return-url="https://www.bottleworks.co.kr:443"> <img src="/data/skin/front/kaimen_pc/img/etc/pc_kakao.png" alt="카카오 아이디 로그인"></a>
                    </div> -->
            </div>
            <!--      </form> -->

            <!-- <p>비번 찾기</p>  -->
            <form action="/reset/password/" class="form-reset">
              <h1 class="font-weight-normal" style="text-align: center"> 비밀번호 찾기 </h1>
              <p> 이메일을 입력하시면 비밀번호 재설정 메일을 보내드립니다 </p>
              <input type="email" id="resetEmail" class="form-control" placeholder="이메일을 입력하세요" required=""
                autofocus="">
              <div style="text-align: center;">
                <button class="btn btn-primary btn-block" type="submit" style="background-color: #fd6c44;">확인</button>
              </div>
              <a href="#" id="cancel_reset"><i class="fas fa-angle-left"></i> 뒤로가기 </a>
            </form>

            <!-- <p>가입창</p>  -->
            <!-- <form action="/signup1/" class="form-signup">
                  <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign Up </h1> -->
            <!-- <div class="social-login">
                        <button class="btn naver-btn social-btn" type="button"><span>네이버 가입</span> </button>
                    </div>
                    <div class="social-login">
                        <button class="btn kakao-btn social-btn" type="button"><span>카카오 가입</span> </button>
                    </div> -->
            <!-- <p style="text-align:left; margin: 10px 0 0 1px;"> 이름 </p>
                    <input type="text" id="user-name" class="form-control" placeholder="이름" required="" autofocus="">
                    <p style="text-align:left; margin: 10px 0 0 1px;"> 이메일 </p>
                    <input type="email" id="user-email" class="form-control" placeholder="이메일주소" required autofocus="">
                    <p style="text-align:left; margin: 10px 0 0 1px;"> 비밀번호 </p>
                    <input type="password" id="user-pass" class="form-control" placeholder="비밀번호" required autofocus="">
                    <p style="text-align:left; margin: 10px 0 0 1px;"> 비밀번호 확인 </p>
                    <input type="password" id="user-repeatpass" class="form-control" placeholder="비밀번호 확인" required autofocus="">
                    <p style="text-align:left; margin: 10px 0 0 1px;"> 주소 </p>
                    <input type="text" id="user-address" class="form-control" placeholder="주소" required autofocus="">
                    <div style="text-align: center;">
                      <button class="btn btn-primary btn-block" type="submit" style="background-color: #fd6c44;"><i class="fas fa-user-plus"></i> Sign Up</button>
                    </div>
                    <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> 뒤로가기 </a>
                </form>
                <br> -->

          </div>

        </section>
      </main>
      </div>

      <!-- body_wrap - end -->

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

      <!-- google map - jquery include -->
      <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDk2HrmqE4sWSei0XdKGbOMOHN3Mm2Bf-M&ver=2.1.6"></script>
      <script src="assets/js/gmaps.min.js"></script>

      <!-- jquery-ui - jquery include -->
      <script src="assets/js/jquery-ui.js"></script>

      <!-- off canvas sidebar - jquery include -->
      <script src="assets/js/mCustomScrollbar.js"></script>

      <!-- custom - jquery include -->
      <script src="assets/js/main.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
      <script src="/script.js"></script>
      <script src="assets/js/finder.js"></script>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
      <script>
        $(document).ready(function () {
          var msg = '<%=msg%>';// 없는 값일 때 alert
          if (msg != 'null') {
            alert(msg);
          }
        });
      </script>
    </body>

    </html>