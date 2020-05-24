<%@page import="product.vo.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	// 	ArrayList<ProductBean> productList = (ArrayList<ProductBean>)request.getAttribute("productList");
	// 	int ListCount = (int) request.getAttribute("ListCount");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Home | Product</title>

<!-- core CSS -->
<link href="css/product_modal.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/owl.carousel.min.css" rel="stylesheet">
<link href="css/icomoon.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">


<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">
</head>
<script type="text/javascript">

</script>
<!--/head-->
<body>
	<jsp:include page="/inc/top.jsp" />
	<!--/header-->

	<div class="page-title"
		style="background-image: url(images/page-title.png)">
		<h1>Product</h1>
	</div>

	<section id="portfolio">

		<div class="center">
			<h2>Product List</h2>
			<p class="lead">상품 리스트 상품확인 관리자 수정삭제 흑흑흑흑</p>
		</div>
		<!-- 			data-filter 수정해야함 ~ test용 -->
		<ul class="portfolio-filter text-center">
			<li><a class="btn btn-default active" href="#" data-filter="*">All
					Works</a></li>
			<li><a class="btn btn-default" href="#" data-filter=".아쿠아리움">아쿠아리움</a></li>
			<li><a class="btn btn-default" href="#" data-filter=".전시">전시</a></li>
			<li><a class="btn btn-default" href="#" data-filter=".요트">요트</a></li>
			<li><a class="btn btn-default" href="#" data-filter=".체험">체험</a></li>
		</ul>
		<!--/#portfolio-filter-->

		<section id="portfolio">
			<div class="container">
				<input type="button" class="btn btn-default active" value="관리자:상품등록"
					onclick="location.href='productRegistForm.pr'" />
					<form action="ProductCartAdd.ca" method="post"
						name="productListForm">
				<div class="portfolio-items">
						<ul class="product-list">
							<c:choose>
								<c:when test="${ListCount>0 && productList !=null}">
									<c:forEach var="list" items="${productList }">
									<li class="portfolio-item ${list.p_category } col-xs-12 col-sm-4 col-md-3 single-work">
									<img src="product/productUpload/${list.p_image }" alt="product">
									<h5>
									${list.p_name }</h5>
									<p>${list.p_price }</p>
									
									<input type="hidden" value="${list.p_num }"name="p_num">
									<input type="hidden" value="${list.p_amount }"name="p_amount">
									
									<input type="button" id="myBtn" value="구매하기" onclick="#">
										<input type="submit" value="장바구니담기" > 
										</li>
									</c:forEach>
								</c:when>
								<c:otherwise>
							<section class="portfolio-item all col-xs-12 col-sm-4 col-md-3 single-work"><h2>등록된 글이 없습니다.</h2></section>
								</c:otherwise>
							</c:choose>
						</ul>
				</div>
					</form>
			</div>

			<!-- 			</section> -->


		</section>






		<section id="bottom">
			<div class="container fadeInDown" data-wow-duration="1000ms"
				data-wow-delay="600ms">
				<div class="row">
					<div class="col-md-3 col-sm-6">
						<div class="widget">
							<h3>Company</h3>
							<ul>
								<li><a href="#">About us</a></li>
								<li><a href="#">We are hiring</a></li>
								<li><a href="#">Meet the team</a></li>
								<li><a href="#">Copyright</a></li>
								<li><a href="#">Terms of use</a></li>
								<li><a href="#">Privacy policy</a></li>
								<li><a href="#">Contact us</a></li>
							</ul>
						</div>
					</div>
					<!--/.col-md-3-->

					<div class="col-md-3 col-sm-6">
						<div class="widget">
							<h3>Support</h3>
							<ul>
								<li><a href="#">Faq</a></li>
								<li><a href="#">Blog</a></li>
								<li><a href="#">Forum</a></li>
								<li><a href="#">Documentation</a></li>
								<li><a href="#">Refund policy</a></li>
								<li><a href="#">Ticket system</a></li>
								<li><a href="#">Billing system</a></li>
							</ul>
						</div>
					</div>
					<!--/.col-md-3-->

					<div class="col-md-3 col-sm-6">
						<div class="widget">
							<h3>Developers</h3>
							<ul>
								<li><a href="#">Web Development</a></li>
								<li><a href="#">SEO Marketing</a></li>
								<li><a href="#">Theme</a></li>
								<li><a href="#">Development</a></li>
								<li><a href="#">Email Marketing</a></li>
								<li><a href="#">Plugin Development</a></li>
								<li><a href="#">Article Writing</a></li>
							</ul>
						</div>
					</div>
					<!--/.col-md-3-->

					<div class="col-md-3 col-sm-6">
						<div class="widget">
							<h3>Our Partners</h3>
							<ul>
								<li><a href="#">Adipisicing Elit</a></li>
								<li><a href="#">Eiusmod</a></li>
								<li><a href="#">Tempor</a></li>
								<li><a href="#">Veniam</a></li>
								<li><a href="#">Exercitation</a></li>
								<li><a href="#">Ullamco</a></li>
								<li><a href="#">Laboris</a></li>
							</ul>
						</div>
					</div>
					<!--/.col-md-3-->
				</div>
			</div>
		</section>
		<!--/#bottom-->

		<footer id="footer" class="midnight-blue">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						&copy; 2013 <a target="_blank" href="http://shapebootstrap.net/"
							title="Free Twitter Bootstrap WordPress Themes and HTML templates">ShapeBootstrap</a>.
						All Rights Reserved.
					</div>
					<div class="col-sm-6">
						<ul class="pull-right">
							<li><a href="#">Home</a></li>
							<li><a href="#">About Us</a></li>
							<li><a href="#">Faq</a></li>
							<li><a href="#">Contact Us</a></li>
						</ul>
					</div>
				</div>
			</div>
		</footer>
		<!--/#footer-->

		<script src="js/product_modal.js"></script>
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.prettyPhoto.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.isotope.min.js"></script>
		<script src="js/main.js"></script>
</body>
</html>