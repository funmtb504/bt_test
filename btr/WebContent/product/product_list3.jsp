<%@page import="product.vo.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	int ListCount = (int) request.getAttribute("ListCount");
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">



</style>
<script src="js/jquery-3.5.0.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$("#product-detail").click(function() {
		alert("클릭")
		document.productListForm.submit()
		
	});
});
</script>

</head>
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
			<p class="lead">상품 리스트</p>
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

		
		<section id="team-area">
        <div class="container">
        <c:if test="${ListCount<=0}">
            <div class="center fadeInDown">
                <h4>등록된 상품이 없습니다</h4>
                <p class="lead"></p>
            </div>
        </c:if>
            <div class="row">

           <div class="portfolio-items">
			
	            <c:choose>
					<c:when test="${ListCount>0}">
					<c:forEach var="list" items="${productList }" varStatus="vs">
	                <div onclick="location.href='productDetail.pr?p_num=${list.p_num }'" class="col-md-4 col-sm-6 single-team portfolio-item ${list.p_category } col-xs-12 col-sm-4 col-md-3 single-work">
	                <input type="hidden" value="${list.p_num }" name="p_num">
	                    <div class="inner">
	                        <div class="team-img">
	                           <img src="product/productUpload/${list.p_image }" width="200px" height="200px">
	                        </div>
	                        <div class="team-content">
	                            <h4>${list.p_name }</h4>
	                            <span class="desg">${list.p_category }</span>
	                            <div class="team-social">
	                               <span style="color: #F76;"><fmt:formatNumber value="${list.p_price }"
									pattern="###,###,###" /> 원</span>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	               
	                </c:forEach>
	             </c:when>						
				</c:choose>
					</div>

            </div>
        </div>
    </section>


	</section>
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