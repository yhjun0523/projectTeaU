<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
		<% String msg=(String)request.getAttribute("msg"); %>
			<!DOCTYPE html>
			<html>
			<meta charset="EUC-KR">
			<title>Insert title here</title>

			<head>

				<meta charset="utf-8">
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
				<meta http-equiv="x-ua-compatible" content="ie=edge">

				<title>signUp</title>





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
					.contact_form {
						margin-left: 15%;
						margin-right: 15%;
					}

					.container .btn {
						display: inline-block
					}
				</style>



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

				<script src="assets/js/jquery-3.6.0.min.js"></script>

				<script src="https://code.jquery.com/jquery-3.6.0.min.js"
					integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

				<script language="javascript">
					// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
					//document.domain = "abc.go.kr";

					function goPopup() {
						// 주소검색을 수행할 팝업 페이지를 호출합니다.
						// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
						var pop = window.open("/biz/popup/jusoPopup.jsp", "pop",
							"width=570,height=420, scrollbars=yes, resizable=yes");

						// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
						//var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
					}

					function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
						roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,
						detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn,
						buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
						// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
						document.form.roadFullAddr.value = roadFullAddr;
						document.form.roadAddrPart1.value = roadAddrPart1;
						document.form.roadAddrPart2.value = roadAddrPart2;
						document.form.addrDetail.value = addrDetail;
						document.form.engAddr.value = engAddr;
						document.form.jibunAddr.value = jibunAddr;
						document.form.zipNo.value = zipNo;
						document.form.admCd.value = admCd;
						document.form.rnMgtSn.value = rnMgtSn;
						document.form.bdMgtSn.value = bdMgtSn;
						document.form.detBdNmList.value = detBdNmList;
						/** 2017년 2월 추가제공 **/
						document.form.bdNm.value = bdNm;
						document.form.bdKdcd.value = bdKdcd;
						document.form.siNm.value = siNm;
						document.form.sggNm.value = sggNm;
						document.form.emdNm.value = emdNm;
						document.form.liNm.value = liNm;
						document.form.rn.value = rn;
						document.form.udrtYn.value = udrtYn;
						document.form.buldMnnm.value = buldMnnm;
						document.form.buldSlno.value = buldSlno;
						document.form.mtYn.value = mtYn;
						document.form.lnbrMnnm.value = lnbrMnnm;
						document.form.lnbrSlno.value = lnbrSlno;
						/** 2017년 3월 추가제공 **/
						document.form.emdNo.value = emdNo;
					}


				</script>


				<script type="text/javascript">
					$(document).ready(function () {
						var msg = '<%=msg%>';//아이디 중복 시 alert 표출
						if (msg != 'null') {
							alert(msg);
						}

						//비밀번호 중복체크
						$("#alert-success").hide();
						$("#alert-danger").hide();
						$("input").keyup(function () {
							var pwd1 = $("#pwd1").val();
							var pwd2 = $("#pwd2").val();
							if (pwd1 != "" || pwd2 != "") {
								if (pwd1 == pwd2) {
									$("#alert-success").show();
									$("#alert-danger").hide();
									$("#joinsubmit").removeAttr("disabled");
								} else {
									$("#alert-success").hide();
									$("#alert-danger").show();
									$("#joinsubmit").attr("disabled", "disabled");
								}
							}
						});

					});

				</script>






			</head>


			<body>

				<!-- body_wrap - start -->
				<div class="body_wrap">

					<!-- backtotop - start -->
					<div class="backtotop">
						<a href="#" class="scroll"> <i class="far fa-arrow-up"></i> <i class="far fa-arrow-up"></i>
						</a>
					</div>
					<!-- backtotop - end -->

					<!-- preloader - start -->
					<div id="preloader"></div>
					<!-- preloader - end -->

					<!-- header_section - start
      ================================================== -->
					<header class="header_section style_3">
						<div class="content_wrap" style="background-color: #ffffff;">
							<div class="container maxw_1720">
								<div class="row align-items-center">

									<div class="col-lg-2 col-md-6 col-6">
										<div class="brand_logo">
											<a class="brand_link" href="index.jsp"> <img
													src="assets/images/logo/TeaU.png"
													srcset="assets/images/logo/logo_black_2x.png 2x"
													alt="logo_not_found">
											</a>
										</div>
									</div>

									<div class="col-lg-10 col-md-6 col-6">
										<nav class="main_menu navbar navbar-expand-lg">
											<button class="mobile_menu_btn navbar-toggler" type="button"
												data-bs-toggle="collapse" data-bs-target="#main_menu_dropdown"
												aria-controls="main_menu_dropdown" aria-expanded="false"
												aria-label="Toggle navigation">
												<span class="navbar-toggler-icon"><i class="fal fa-bars"></i></span>
											</button>
											<div class="main_menu_inner collapse navbar-collapse"
												id="main_menu_dropdown">
												<ul class="main_menu_list ul_li">
													<li class="active dropdown"><a class="nav-link"
															href="subscribe_main.jsp" id="home_submenu"> Subscribe </a>
													</li>
													<li class="dropdown"><a class="nav-link" href="#"
															id="portfolio_submenu" role="button"
															data-bs-toggle="dropdown" aria-expanded="false"> shop </a>
														<ul class="submenu dropdown-menu"
															aria-labelledby="portfolio_submenu">
															<li><a href="shop.jsp">#계절별</a></li>
															<li><a href="shop2.jsp">#사용자별</a></li>
															<li><a href="shop3.jsp">#디카페인</a></li>
														</ul>
													</li>
													<li class="dropdown"><a class="nav-link" href="#"
															id="services_submenu" role="button"
															data-bs-toggle="dropdown" aria-expanded="false"> board </a>
														<ul class="submenu dropdown-menu"
															aria-labelledby="services_submenu">
															<li><a href="reviewBoard.jsp">씨앗 리뷰</a></li>
															<li><a href="blendedTeaBoard.jsp">새싹&나무 리뷰</a></li>
															<li><a href="rankingBoard.jsp">새싹&나무 랭킹</a></li>
															<li><a href="faq.jsp">F.A.Q.</a></li>
														</ul>
													</li>
													<li class="dropdown"><a class="nav-link" href="magazine.jsp"
															id="experience_submenu"> Magazine </a></li>
													<li><a class="nav-link" href="tea_finder_detail.do">Tea
															finder</a></li>
												</ul>
											</div>

											<ul class="header_btns_group ul_li_right">
												<li>
													<button type="button" class="main_search_btn">
														<a class="fal fa-user" onclick="myAndLog()"
															style="color: black;"></a>
													</button>
												</li>
												<li>
													<button type="button" class="cart_btn">
														<i class="fal fa-shopping-bag"></i>
														<small class="cart_counter">2</small>
													</button>
												</li>
												<li>
													<input type="button" id="logInOut"
														class="btn btn_primary text-uppercase" value="LogIN"
														onclick="logInOut()">
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
											<button type="submit" class="submit_btn">
												<i class="fal fa-search"></i>
											</button>
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
						<!-- cart_sidebar - end
        ================================================== -->

						<!-- breadcrumb_section - start
        ================================================== -->
						<section class="breadcrumb_section text-uppercase"
							style="background-image: url(./assets/images/logo/signUp.png);">
						</section>
						<!-- breadcrumb_section - end
        ================================================== -->

						<!-- contact_section - start
        ================================================== -->
						<section class="contact_section sec_ptb_120 bg_default_gray">
							<div class="container">
								<h1 class="text-center">Sign Up</h1>
								<div class="contact_form bg_white wow fadeInUp" data-wow-delay=".1s">
									<form action="insertMember.do" method="post" enctype="multipart/form-data"
										accept-charset=”EUC-KR”>
										<div class="row justify-content-center">
											<div class="row justify-content-center">
												<div class="col-lg-12">
													<div class="form_item">
														<label for="id">아이디</label> <input type="text" name="memberId"
															placeholder="id를 입력해주세요." value="">

													</div>
												</div>
												<div class="col-lg-12">
													<div class="form_item">
														<label for="password">비밀번호</label> <input type="password"
															name="memberPass" id="pwd1" placeholder="password를 입력해주세요."
															value="">
													</div>
												</div>
												<div class="col-lg-12">
													<div class="form_item">
														<label for="passwordCheck">비밀번호확인</label> <input type="password"
															name="rememberPass" id="pwd2"
															placeholder="password를 한번 더 입력해주세요." value="">
													</div>
												</div>

												<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
												<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>

												<div class="col-lg-12">
													<div class="form_item">
														<label for="name">이름</label> <input type="name"
															name="memberName" placeholder="성함을 입력해주세요." value="">
													</div>
												</div>
												<div class="col-lg-12">
													<div class="form_item">
														<label for="phoneNumber">전화번호</label> <input type="phoneNumber"
															name="memberPhone" placeholder="phoneNumber를 입력해주세요."
															value="">
													</div>
												</div>
												<div class="col-lg-6">
													<div class="form_item">
														<label for="email">이메일</label> <input type="text"
															name="memberEmail" placeholder="이메일을 입력해주세요" value="">
													</div>
												</div>
												<div class="col-lg-6">
													<div class="form_item">
														<label for="adress">주소</label> <input type="text"
															id="roadAddrPart1" name="memberAddress"
															placeholder="주소를 입력해주세요">
														<button type="button" class="btn btn_primary"
															onclick="goPopup()">주소검색</button>
													</div>
												</div>
												<!--   <div class="col-lg-12">
                      <div class="form_item">                        
                        <input type="adress" name="adress" placeholder="주소를 입력해주세요.">
                      </div>
                    </div>
                </div> -->
												<div class="text-center">
													<button type="submit" class="btn btn_primary text-uppercase">Sign
														Up</button>
												</div>
												<div class="text-center" style="margin-top: 5%;">
													<a href="./login.jsp">Log In</a>
												</div>
									</form>
								</div>
							</div>

						</section>
						<!-- contact_section - end
        ================================================== -->

						<!-- google map - start
        ================================================== -->
						<!-- google map - end
        ================================================== -->

					</main>
					<!-- main body - end
      ================================================== -->

					<!-- footer_section - start
      ================================================== -->
					<%@include file="footer.jsp" %>
						<!-- footer_section - end
      ================================================== -->

				</div>
				<!-- body_wrap - end -->


			</body>

			</html>