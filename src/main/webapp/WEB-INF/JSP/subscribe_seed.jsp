<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
		<% String data=request.getParameter("data"); %>

			<!doctype html>
			<html lang="en">

			<head>

				<meta charset="utf-8">
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
				<meta http-equiv="x-ua-compatible" content="ie=edge">

				<title>Subscribe - Seed</title>
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
					.header_section {
						background-color: white;
					}
				</style>


			</head>

			<body>
				<jsp:include page="header.jsp"></jsp:include>


				<!-- breadcrumb_section - start
        ================================================== -->
				<section class="breadcrumb_section text-uppercase"
					style="background-image: url(assets/images/breadcrumb/seed.jpg);">
					<div class="container">
						<h1 class="page_title text-white wow fadeInUp" data-wow-delay=".1s">씨앗구독</h1>
						<ul class="breadcrumb_nav ul_li wow fadeInUp" data-wow-delay=".2s">
							<li><a href="index.do"><i class="fas fa-home"></i> Home</a></li>
							<li>씨앗 구독</li>
						</ul>
					</div>
					<div class="breadcrumb_icon_wrap">
						<div class="container">
							<div class="breadcrumb_icon wow fadeInUp" data-wow-delay=".3s">
								<img src="assets/images/feature/11.jpg" alt="icon_not_found" width="50px">
								<!--지금 커피아이콘 => 씨앗아이콘으로-->
								<span class="bg_shape"></span>
							</div>
						</div>
					</div>
				</section>
				<!-- breadcrumb_section - end
        ================================================== -->
				<main>
					<!-- reserve_table_section - start
        ================================================== -->
					<section class="reserve_table_section sec_ptb_120">
						<div class="container">
							<div class="reserve_table_form wow fadeInUp" data-wow-delay=".1s">
								<h2 class="form_title text-center text-uppercase" style="font-size: 35px;">원하는 항목을
									골라보세요(중복 가능)</h2>

								<form action="insertSubSeed.do" id="insertForm" method="POST">
									<input type="hidden" id="subUser" name="subUser" value="${member.memberId}" />
									<input type="hidden" id="subCheck" name="subCheck" value="${member.memberSub}" />
									<div class="row justify-content-center">


										<!--나눠놓은 기준은 행 단위-->
										<div class="col-lg-2"></div>
										<div class="col-lg-8 sub_leaf_title">맛</div>
										<div class="col-lg-2"></div>
										<div class="col-lg-3"></div>
										<div class="col-lg-3 sub_seed">

											<label style="cursor: pointer"><input type="checkbox" name="tagTaste"
													value="시원한맛" /> 시원한 맛(민트)</label> <br /> <label
												style="cursor: pointer"><input type="checkbox" name="tagTaste"
													value="떫은맛" /> 떫은맛(마테차)</label> <br /> <label
												style="cursor: pointer"><input type="checkbox" name="tagTaste"
													value="구수한맛" /> 구수한 맛(얼그레이)</label>

										</div>

										<div class="col-lg-3 sub_seed">
											<label style="cursor: pointer"><input type="checkbox" name="tagTaste"
													value="단맛" /> 단맛(오미자차)</label> <br /> <label
												style="cursor: pointer"><input type="checkbox" name="tagTaste"
													value="신맛" /> 신맛(히비스커스)</label>
										</div>

										<div class="col-lg-3"></div>

										<div class="col-lg-2"></div>
										<div class="col-lg-8">
											<hr size="5" noshade>
										</div>
										<div class="col-lg-2"></div>

										<div class="col-lg-2"></div>
										<div class="col-lg-8 sub_leaf_title" style="margin-bottom: 30px;">
											카페인</div>
										<div class="col-lg-2"></div>

										<div class="col-lg-3"></div>
										<div class="col-lg-3 sub_seed">
											<label style="cursor: pointer"><input type="checkbox" name="tagCaff"
													value="카페인" /> 카페인</label>
										</div>

										<div class="col-lg-3 sub_seed">
											<label style="cursor: pointer"><input type="checkbox" name="tagCaff"
													value="디카페인" /> 디카페인</label>
										</div>
										<div class="col-lg-3"></div>

										<div class="col-lg-2"></div>
										<div class="col-lg-8">
											<hr size="5" noshade>
										</div>
										<div class="col-lg-2"></div>

										<div class="col-lg-2"></div>
										<div class="col-lg-8 sub_leaf_title" style="margin-bottom: 20px;">
											효능</div>
										<div class="col-lg-2"></div>

										<div class="col-lg-3"></div>
										<div class="col-lg-3 sub_seed">
											<label style="cursor: pointer"><input type="checkbox" name="tagEffect"
													value="심신안정" /> 심신안정</label> <br /> <label
												style="cursor: pointer"><input type="checkbox" name="tagEffect"
													value="활력" /> 활력</label>
										</div>

										<div class="col-lg-3 sub_seed">
											<label style="cursor: pointer"><input type="checkbox" name="tagEffect"
													value="건강" /> 건강</label>
										</div>
										<div class="col-lg-3"></div>

										<div class="text-center">
											<br /> <br /> <br />
											<input type="button" id="btn_subSubmit"
												class="btn btn_primary text-uppercase" onclick="inORUp()"></input>
										</div>
									</div>
								</form>
								<!--여기 위 부분을 수정-->

								<div class="decoration_icon">
									<img src="assets/images/feature/11.jpg" alt="icon_not_found" width="50px"> <span
										class="bg_shape"></span>
								</div>
							</div>
							<div class="reserve_banner_image wow fadeInUp" data-wow-delay=".3s">
								<img src="assets/images/reserve/seed_bottom.jpg" alt="image_not_found">
							</div>
						</div>
					</section>
					<!-- reserve_table_section - end
        ================================================== -->
				</main>
				<!-- main body - end
      ================================================== -->

				<jsp:include page="footer.jsp"></jsp:include>

				<script>
					$(document).ready(function () {
						var data = <%=data%>;
						console.log(data);
						if (data != null) {
							var obj = JSON.parse(data); // string -> JSON
							console.log(obj);
							var tagTaste = obj['subInfo'].tagTaste.split(',');
							var tagCaff = obj['subInfo'].tagCaff.split(',');
							var tagEffect = obj['subInfo'].tagEffect.split(',');

							$('input:checkbox[name="tagTaste"]').each(function () {
								for (var i = 0; i < tagTaste.length; i++) {
									if (this.value == tagTaste[i]) {
										this.checked = true;
									}
								}
							});
							$('input:checkbox[name="tagCaff"]').each(function () {
								for (var i = 0; i < tagCaff.length; i++) {
									if (this.value == tagCaff[i]) {
										this.checked = true;
									}
								}
							});
							$('input:checkbox[name="tagEffect"]').each(function () {
								for (var i = 0; i < tagEffect.length; i++) {
									if (this.value == tagEffect[i]) {
										this.checked = true;
									}
								}
							});
						}


						// insert, update 버튼 구분
						if (data == null) {
							$('#btn_subSubmit').val('씨앗 구독 신청');
						} else {
							$('#btn_subSubmit').val('씨앗 구독 수정');

						}
					});

					// insert , update 경로 구분
					function inORUp() {
						let data = <%=data%>;
						let subCheck = $('#subCheck').val();

						if (data == null) {

							// 사용자가 보낸 정보가 없으면 구독 내역 있는지 체크(1인 1구독)
							if (subCheck == 1) {
								alert("이미 구독 중인 상품이 있습니다.")
							} else {
								// 구독 내역 없으면 insert
								var insert = 'insertSubSeed.do'
								checkbox(insert);
							}
						} else {
							// 사용자가 보낸 정보가 있으면 update
							var update = 'updateSubSeed.do'
							checkbox(update);
						}
					}



					function checkbox(inORUp) {
						if ($("input:checkbox[name=tagTaste]").is(":checked") == false) {
							alert("맛을 하나 이상 선택해주세요");
							return false;
						} else if ($("input:checkbox[name=tagCaff]").is(":checked") == false) {
							alert("카페인종류를 하나 이상 선택해주세요");
							return false;
						} else if ($("input:checkbox[name=tagEffect]").is(":checked") == false) {
							alert("효능을 하나 이상 선택해주세요");
							return false;
						} else {
							$.ajax({
								type: 'POST',
								url: inORUp,
								dataType: 'text',// form에 있는 데이터들을 controller로 text타입으로 
								data: $('#insertForm').serialize(),
								success: function (data) {
									alert(data);
									window.location.href = ("getSubSeed.do"); //JSP 이동 페이지 적기  
								},
								error: function (e) {
									console.log(e);
								}
							});
						}
					}
				</script>
			</body>

			</html>