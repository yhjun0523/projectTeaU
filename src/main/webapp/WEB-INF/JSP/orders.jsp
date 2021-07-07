<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
		<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
			<!doctype html>
			<html lang="en">

			<head>

				<meta charset="utf-8">
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
				<meta http-equiv="x-ua-compatible" content="ie=edge">

				<title>Subscribe</title>
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


			</head>

			<body>
				<jsp:include page="/WEB-INF/JSP/header.jsp"></jsp:include>
				<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
				<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

				<!-- 도로명주소 -->
				<script language="JavaScript" src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"
					charset="UTF-8"></script>
				<script charset="utf-8">
					//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
					function sample4_execDaumPostcode() {
						new daum.Postcode(
							{
								oncomplete: function (data) {
									// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

									// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
									// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
									var roadAddr = data.roadAddress; // 도로명 주소 변수
									var extraRoadAddr = ''; // 참고 항목 변수

									// 법정동명이 있을 경우 추가한다. (법정리는 제외)
									// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
									if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
										extraRoadAddr += data.bname;
									}
									// 건물명이 있고, 공동주택일 경우 추가한다.
									if (data.buildingName !== ''
										&& data.apartment === 'Y') {
										extraRoadAddr += (extraRoadAddr !== '' ? ', '
											+ data.buildingName : data.buildingName);
									}
									// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
									if (extraRoadAddr !== '') {
										extraRoadAddr = ' (' + extraRoadAddr + ')';
									}

									// 우편번호와 주소 정보를 해당 필드에 넣는다.
									document.getElementById('sample4_postcode').value = data.zonecode;
									document.getElementById("sample4_roadAddress").value = roadAddr;
									document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

									// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
									if (roadAddr !== '') {
										document.getElementById("sample4_extraAddress").value = extraRoadAddr;
									} else {
										document.getElementById("sample4_extraAddress").value = '';
									}

									var guideTextBox = document.getElementById("guide");
									// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
									if (data.autoRoadAddress) {
										var expRoadAddr = data.autoRoadAddress
											+ extraRoadAddr;
										guideTextBox.innerHTML = '(예상 도로명 주소 : '
											+ expRoadAddr + ')';
										guideTextBox.style.display = 'block';

									} else if (data.autoJibunAddress) {
										var expJibunAddr = data.autoJibunAddress;
										guideTextBox.innerHTML = '(예상 지번 주소 : '
											+ expJibunAddr + ')';
										guideTextBox.style.display = 'block';
									} else {
										guideTextBox.innerHTML = '';
										guideTextBox.style.display = 'none';
									}
								}
							}).open({
								autoClose: true
							});
					};

					$("#check_modules").click(function () {


						var Imp = window.IMP;
						IMP.init('imp45072851');

						IMP.request_pay({
							pg: 'html5_inicis', // version 1.1.0부터 지원.
							pay_method: 'card',
							merchant_uid: "${orders.ordersId}",
							name: '"${shop.teaName}"결제', // 상품명
							amount: "${orders.ordersTotal}",
							buyer_email: "${member.memberEmail}", // 구매자 이메일
							buyer_name: "${member.memberName}", // 구매자 이름
							buyer_tel: "${member.memberPhone}", // 구매자 연락처
							buyer_addr: "${member.memberAddress}", // 구매자 주소
						}, function (rsp) {
							if (rsp.success) {

								var msg = '결제가 완료되었습니다.';
								msg += '고유ID : ' + rsp.imp_uid;
								msg += '상점 거래ID : ' + rsp.merchant_uid;
								msg += "${sub.subPrice}" + rsp.paid_amount;
								msg += '카드 승인번호 : ' + rsp.apply_num;

							} else {
								var msg = '결제에 실패하였습니다.';
								msg += '에러내용 : ' + rsp.error_msg;
							}
							alert(msg);
						});
					});

				</script>

				<!-- cart_section - start
        ================================================== -->
				<section class="cart_section sec_ptb_120 bg_default_gray">
					<div class="container container_boxed">
						<h3 class="form_title text-uppercase wow fadeInUp" data-wow-delay=".1s" style="padding-bottom: 20px;">주문내역
							확인</h3>
						<div>
							<table class="table">
								<thead class="text-uppercase wow fadeInUp" data-wow-delay=".1s">
									<tr>
										<th>상품정보</th>
										<th>수량</th>
										<th>포인트</th>
										<th>상품금액</th>
										<th>배송비</th>
									</tr>
								</thead>
								<c:forEach items="${orders }" var="orders">
									<tbody>
										<tr class="wow fadeInUp" data-wow-delay=".1s">
											<td>
												<div class="carttable_product_item">
													<div class="item_image">
														<img src="assets/images/breadcrumb/1.jpg" alt="image_not_found">
													</div>
													<h3 class="item_title">새싹구독</h3>
												</div>
											</td>
											<td>
											<!-- <div class="quantity_input">
											<form action="#">
												<button type="button" class="input_number_decrement">–</button>
												<input class="input_number" type="text" value="2">
												<button type="button" class="input_number_increment">+</button>
											</form>
										</div> --> <span class="price_text">1개</span>
											</td>
											<td><span class="price_text">적립<br>상품 +220원<br>
													상품 +220원
												</span></td>
											<td><span class="price_text">22,000원</span></td>
											<td><span class="price_text">무료</span></td>
										</tr>
									</tbody>
								</c:forEach>
							</table>
						</div>
						<br>
						<h3 class="form_title text-uppercase wow fadeInUp"
							style="padding-bottom: 20px; border-bottom: solid 1px rgb(194, 194, 194);">배송지
							정보</h3>
						<form action="insertOrders.do" method="post">
							<div class="wow fadeInUp" data-wow-delay=".3s">
							<div class="form_item col-lg-2">
								<h4>
									<input type="text" name="memberId" value="${member.memberId }">
								</h4>
							</div>
								<div class="form_item col-lg-2">
									<h4 class="form_field_title">
										받는분 이름<sup>*</sup>
									</h4>
									<input type="text" name="ordersReceiver" placeholder="이름을 입력해주세요." value="" required autofocus>
								</div>


								<div class="form_item col-lg-4">
									<h4 class="form_field_title">
										받는분 연락처<sup>*</sup>
									</h4>
									<div>
										<input type="tel" name="ordersPhone" placeholder="전화번호를 입력해주세요. 예시: 010-0000-0000" value=""
											pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required>
									</div>
								</div>
								<div class="form_item col-lg-2" style="margin:0px">
									<h4 class="form_field_title">
										우편번호<sup>*</sup>
									</h4>
								</div>
								<div style="display:flex;">
									<div class="form_item col-lg-2" style="margin:0px">
										<input type="text" id="sample4_postcode" name="ordersAddress" placeholder="우편번호 검색"
											accept-charset="EUC-KR" required>
									</div>
									<div class="form_item col-lg-2" style="margin:0px 0px 0px 20px">
										<button type="button" class="btn btn_primary" onclick="sample4_execDaumPostcode()">찾기</button>
									</div>
								</div>
							</div>
							<div class="form_item col-lg-5">
								<h4 class="form_field_title">
									주소<sup>*</sup>
								</h4>
								<input type="text" id="sample4_roadAddress" name="ordersAddress" placeholder="주소를 입력해주세요."
									accept-charset="EUC-KR" required>
							</div>


							<h3 class="form_title text-uppercase wow fadeInUp"
								style="padding-bottom: 20px; border-bottom: solid 1px rgb(194, 194, 194);">포인트</h3>
							<div class="form_item col-lg-2" style="margin:0px">
								<h4 class="form_field_title">
									포인트<sup>*</sup>
								</h4>
							</div>
							<div style="display:flex;">
								<div class="form_item col-lg-3" style="margin:0px">
									<input type="text" name="ordersUsingPoint" placeholder="3,000점 이상부터 사용가능">
								</div>
								<div class="form_item col-lg-2" style="margin:0px 0px 30px 20px">
									<button type="button" class="btn btn_primary">적용</button>
								</div>
							</div>
							<!--결제수단-->
							<h2 class="form_title text-uppercase fadeInUp line" data-wow-delay=".1s"
								style="padding-bottom: 20px; border-bottom: solid 1px rgb(194, 194, 194);">결제수단</h2>
							<input type="text" name="orderSPayment" placeholder="결제수단" value="" required autofocus>
							<!-- 				<div class="select">
					<input type="radio" id="select" name="shop"><label
						for="select">신용카드</label> <input type="radio" id="select2"
						name="shop"><label for="select2">신용카드(직접입력)</label> <input
						type="radio" id="select3" name="shop"><label for="select3">무통장
						입금</label> <input type="radio" id="select4" name="shop"><label
						for="select4">카카오페이</label>
					</div>
 -->
							<!--결제금액-->
							<div class="checkout_form_footer wow fadeInUp" data-wow-delay=".5s">
								<span class="total_price"><strong>Total</strong><input type="text" name="ordersTotal"
										placeholder="이름을 입력해주세요." value="" required autofocus></span>
								<!-- <a class="btn btn_primary text-uppercase" href="checkout_step2.html">결제하기</a> -->
								<button class="btn btn_primary" id="check_modules">결제하기</button>
							</div>
						</form>
					</div>
				</section>
				<!-- cart_section - end
        ================================================== -->

				</main>
				<!-- main body - end
			================================================== -->

				<jsp:include page="/WEB-INF/JSP/footer.jsp"></jsp:include>
				<!-- footer_section - end
			================================================== -->

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

			</body>

			</html>