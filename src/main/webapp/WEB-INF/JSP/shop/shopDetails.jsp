<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!Doctype html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>shop_details</title>
<link rel="shortcut icon" href="assets/images/feature/11.jpg">

<!-- fraimwork - css include -->
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap.min.css">

<!-- icon font - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">

<!-- animation - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/animate.css">

<!-- carousel - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/slick.css">
<link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

<!-- popup - css include -->
<link rel="stylesheet" type="text/css"
	href="assets/css/magnific-popup.css">

<!-- jquery-ui - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/jquery-ui.css">

<!-- custom - css include -->
<link rel="stylesheet" type="text/css" href="assets/css/style.css">

<style>
@font-face {
    font-family: 'twayair';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_tway@1.0/twayair.woff') format('woff');
    font-weight: normal;
    font-style: normal;
} 
@font-face {
    font-family: 'InfinitySans-RegularA1';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/InfinitySans-RegularA1.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

</style>

</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<!-- breadcrumb_section - start
				================================================== -->
	<section class="breadcrumb_section0919 text-uppercase"
		style="background-image: url(./assets/images/logo/shop_details2.png);">
		<div class="container">
			<h1 class="page_title text-black wow fadeInUp" data-wow-delay=".1s">??????
				????????????</h1>
			<ul class="breadcrumb_nav ul_li wow fadeInUp" data-wow-delay=".2s">
				<li><a href="index.html"><i class="fas fa-home"></i> Home</a></li>
				<li>?????? ????????????</li>
			</ul>
		</div>
		<div class="breadcrumb_icon_wrap">
			<div class="container">
				<div class="breadcrumb_icon wow fadeInUp" data-wow-delay=".3s">
					<img src="assets/images/feature/icon_01.png" alt="icon_not_found">
					<span class="bg_shape"></span>
				</div>
			</div>
		</div>
	</section>

	<!-- breadcrumb_section - end
				================================================== -->

	<!-- details_section - start
        ================================================== -->
	<section
		class="details_section shop_details sec_ptb_120 bg_default_gray"
		style="padding-top: 50px;">
		<div class="col-lg-2"></div>
		<div class="admin">
		<div class="col-lg-10" style="text-align: right; margin-bottom: 50px;">
			<button class="btn btn_primary text-uppercase" id="shopUpdate"
				onclick='update()'>?????? ??????</button>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="btn btn_primary text-uppercase" id="removefrm"
				onclick='removeCheck()'>?????? ??????</button>
		</div>
		</div>
		<div class="col-lg-2"></div>
		<div class="container">

			<div
				class="row justify-content-lg-between justify-content-md-center justify-content-sm-center">
				<div class="col-lg-6 col-md-7">
					<div class="details_image_wrap wow fadeInUp" data-wow-delay=".1s">
						<div class="details_image_carousel">
							<c:forEach items="${shopImg}" var="img">
								<div class="slider_item">
									<img src="resource/imgUpload/${img.teaImg }"
										alt="image_not_found">
								</div>
							</c:forEach>
						</div>

						<div class="details_image_carousel_nav">
							<c:forEach items="${shopImg}" var="img">
								<div class="slider_item">
									<img src="resource/imgUpload/${img.teaImg }"
										alt="image_not_found">
								</div>
							</c:forEach>
						</div>
					</div>
				</div>

				<div class="col-lg-6 col-md-7">
					<div class="details_content wow fadeInUp" data-wow-delay=".2s">
						<br>
						<br>
						<div class="details_flex_title">
							<h2 class="details_title text-uppercase" style="font-family: 'InfinitySans-RegularA1'; font-size:30px; font-weight: 100;">${teaDetail.teaName }</h2>
						</div>
						<p>${teaDetail.teaInfo }</p>
						<div class="details_price">
						 <strong class="price_text" id="totalPrice" style="font-size:28px;"></strong>
						</div>
						<div></div>
						<ul class="btns_group ul_li">
							<li>
								<div class="quantity_input quantity_boxed">
									<h4 class="quantity_title text-uppercase" style="font-family: 'twayair'; font-size: 18px; font-weight: 20;">?????? ??????</h4>
									<form action="#" id="cartInfo">
										<input type="hidden" name="teaId" value="${teaDetail.teaId }" />
										<input type="hidden" name="memberId"
											value="${member.memberId }" />
										<button type="button" onclick="countCheckMinus();">???</button>
										<input type="text" name="proCnt" id="cartSize" value="1">
										<button type="button" onclick="countCheckPlus();">+</button>
									</form>
								</div>
							</li>
						</ul>
						<ul class="btns_group ul_li">
							<li><a class="btn btn_secondary text-uppercase"
								onclick="addCart();">???????????? ??????</a></li>
						 	<li><a class="btn btn_secondary text-uppercase"
								onclick="buy();">?????? ??????</a></li>
						</ul> 
						
						<%--   <li><a class="btn btn_secondary text-uppercase" onclick="loginCheck('cart.do?teaId=${teaDetail.teaId}&&memberId=${member.memberId }')">Add To Cart</a></li>
                           <li><a class="btn btn_secondary text-uppercase" onclick="loginCheck('insertOrdersView.do?teaId=${teaDetail.teaId}&&memberId=${member.memberId }')">Direct Buy</a></li> --%>
                     
						<div class="details_wishlist_btn">
							<a href="#!"><i class="fas mr-1"></i></a>
						</div>
						<div class="details_share_links">
							<h4 class="list_title">
								<i class="fas fa-share mr-1"></i> Share
							</h4>
							<ul class="social_links social_icons ul_li">
								<li><a href="#!"><i class="fab fa-facebook-f"></i></a></li>
								<li><a href="#!"><i class="fab fa-twitter"></i></a></li>
								<li><a href="#!"><i class="fab fa-instagram"></i></a></li>
								<li><a href="#!"><i class="fab fa-youtube"></i></a></li>
								<li><a href="#!"><i class="fab fa-behance"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="product_description_wrap wow fadeInUp"
				data-wow-delay=".3s">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-10 col-md-10 col-sm-10">
							<img src="./assets/images/logo/drinkingtea.png">
						</div>
					</div>
				</div>
			</div>
		<!-- 	<div class="related_products">
				<h4 class="area_title text-uppercase mb-0 wow fadeInUp"
					data-wow-delay=".1s">????????????</h4>
				<div class="row">
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="shop_card wow fadeInUp" data-wow-delay=".2s">
							<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
							<a class="item_image" href="shop_details.html"> <img
								src="assets/images/shop/img_01.png" alt="image_not_found">
							</a>
							<div class="item_content">
								<h3 class="item_title text-uppercase">
									<a href="shop_details.html">DB??? ??????</a>
								</h3>
								<div class="btns_group">
									<span class="item_price bg_default_brown">DB??? ??????</span> <a
										class="btn btn_border border_black text-uppercase" href="#!">Add
										To Cart</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="shop_card wow fadeInUp" data-wow-delay=".3s">
							<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
							<a class="item_image" href="shop_details.html"> <img
								src="assets/images/shop/img_02.png" alt="image_not_found">
							</a>
							<div class="item_content">
								<h3 class="item_title text-uppercase">
									<a href="shop_details.html">DB??? ??????</a>
								</h3>
								<div class="btns_group">
									<span class="item_price bg_default_brown">DB??? ??????</span> <a
										class="btn btn_border border_black text-uppercase" href="#!">Add
										To Cart</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="shop_card wow fadeInUp" data-wow-delay=".4s">
							<a class="wishlist_btn" href="#!"><i class="fal fa-heart"></i></a>
							<a class="item_image" href="shop_details.html"> <img
								src="assets/images/shop/img_03.png" alt="image_not_found">
							</a>
							<div class="item_content">
								<h3 class="item_title text-uppercase">
									<a href="shop_details.html">DB??? ??????</a>
								</h3>
								<div class="btns_group">
									<span class="item_price bg_default_brown">DB??? ??????</span> <a
										class="btn btn_border border_black text-uppercase" href="#!">Add
										To Cart</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
 -->
		</div>
	</section>
	<!-- details_section - end
        ================================================== -->
	</main>
	<!-- main body - end
			================================================== -->
	<jsp:include page="../footer.jsp"></jsp:include>
	<script>
	
		let price;
		let count;
	$(document).ready(function(){
		 price = '${teaDetail.teaPrice }';
		 count = $('#cartSize').val();
		$('#totalPrice').text(price*count);
	});
	
		function update() {
			let teaId = '${teaDetail.teaId}'
				$.ajax({
						type : 'POST',
						url : 'updateInfo.do',
						dataType : 'text',
						data : {
							'teaId' : teaId
						},
						success : function(data) {
							window.location.href = ("shopAdmin.do?data=" + encodeURIComponent(JSON
									.stringify(data)));
						},
						error : function(e) {
							comsole.log(e);
						}
					});
		}

		function removeCheck() {

			let deleteCheck = confirm("?????? ????????? ????????? ?????????????????????????")
			if (deleteCheck) {
				location.href = "deleteShop.do?teaId=${teaDetail.teaId }"
			}
		}

		function addCart() {
			
			let location;
			if (id == null) {
				location = "cartInfo.do";
			} else {
				location ="cartInsert.do";
			}

				$.ajax({
					type : 'POST',
					url : location,
					dataType : 'text', // form??? ?????? ??????????????? controller??? text???????????? 
					data : $('#cartInfo').serialize(),
					success : function(data) {
						console.log(data);
						 let goCart = confirm("??????????????? ????????? ???????????????.");
						 
						 if (id == null){
							if (goCart) {
								let cnt = $('#cartSize').val();
								window.location.href = "cart.do?teaId=${teaDetail.teaId }&cnt="+cnt;
							}  
						 }else{
							 window.location.href = "cart.do?memberId=${member.memberId}" ;
						 }

					},
					error : function(e) {
						console.log(e);
					}
				});
			}
		
		function countCheckMinus() {
			var value = $('#cartSize').val();
			value--;

			if (value < 1) {
				alert("?????? ????????? 1????????????.");
				$('#cartSize').val(1);
				value = 1;
			} else {
				$('#cartSize').val(value);
			}
			$('#totalPrice').text(price*value);
		}

		function countCheckPlus() {
			var value = $('#cartSize').val();
			value++;

			if (value > 10) {
				alert("?????? ????????? 10????????????.");
				$('#cartSize').val(10);
				value = 10;
			} else {
				$('#cartSize').val(value);
			}
			$('#totalPrice').text(price*value);
		}
		
	/* 	function buy(){
	         window.location.href = "cart2.do?memberId=${member.memberId}" ;
	      } */
		
		
	</script>
</body>
</html>