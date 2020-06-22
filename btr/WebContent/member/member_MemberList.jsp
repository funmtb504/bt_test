<%@page import="place.vo.PlacePageInfo"%>
<%@page import="place.vo.PlaceBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageInfo" value="${pageinfo }"  /> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>나의 작성글</title>

    <!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/owl.carousel.min.css" rel="stylesheet">
    <link href="css/icomoon.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <link href="css/review.css" rel="stylesheet">

    <link rel="shortcut icon" href="../images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
<style type="text/css">

#table1 {
	color: black;
}

/* 테이블 td조정 */
#td0 {
	width: 56px;
}

#td_title {
	color: blue;
}

#td1 {
	width: 68px;
}

#td2 {
	width: 36px;
	color: red;
}

#td3 {
	width: 60px;
}

#td4 {
	width: 36px;
	color: red;
}

#spanCount1{
	font-size: 23px;
}

#spanCount2{
	font-size: 23px;
    font-weight: bold;
    color: black;
}

#btnBack{
	float: right;
    margin-right: 5px;
}

</style>
</head>
<body>    
<jsp:include page="/inc/top.jsp" />

    <div class="page-title" style="background-image: url(images/page-title.png)">
        <h1>회원 목록(수정중임)</h1>
        
    </div>
    
    <section id="blog">

        <div class="blog container">
            <div class="row">
                <div class="col-md-8">
                                
                	<div class="blog-item">
                        <div class="blog-content">
	                    	<div>
	                    		<span id="spanCount1">총 회원 수 </span>
	                    		<span id="spanCount2"> ${pageInfo.listCount }</span>
	                    	</div>        		   
                        </div>
                    </div>
                    
                <c:forEach var="article" items="${articleList }" >
					<div class="blog-item">
                        <div class="blog-content">
                            <a href="Review_Content.re?&r_num=${article.r_num }&page=${pageInfo.page }">
                            	<table border="3" id="table1">
	                            	<tr>
	                            		<td id="td0">제목 : </td>
	                            		<td id="td_title">${article.id }</td>
	                            		<td id="td1">좋아요</td>
	                            		<td id="td2"></td>
	                            		<td id="td3">조회수 </td>
	                            		<td id="td4"></td>
	                            	</tr>
	                            	<tr>
	                            		<td>지역 : </td>
	                            		<td></td>
	                            		<td colspan="2">작성날짜</td>
	                            		<td colspan="2"></td>
	                            	</tr>
                            	</table>
                            </a>
                        </div>
                    </div>
                		</c:forEach>
				
                    
                </div>
                <!--/.col-md-8-->


            </div>
           
            <!--/.row   페이징 처리-->
            <div class="row">
                <div class="col-md-12 text-center">
                    <ul class="pagination pagination-lg">
                    
                    	<c:choose>
                    	
                    		<c:when test="${pageInfo.page <= 1 }">
                    			<li><a href="#"><i class="fa fa-long-arrow-left"></i></a></li>
                    		</c:when>
                    		<c:otherwise>
                    			<li><a href="MemberWriteList.me?page=${pageInfo.page - 1 }"><i class="fa fa-long-arrow-left"></i></a></li>
                    		</c:otherwise>
                    	</c:choose>
                    
                    	<c:forEach var="a" begin="${pageInfo.startPage }" end="${pageInfo.endPage }" step="1">
                    		
                    		<c:choose>
                    		
                    			<c:when test="${a == pageInfo.page }">
                    				<li class="active"><a>${a }</a></li>
                    			</c:when>
                    			<c:otherwise>
									<li><a href="MemberWriteList.me?page=${a }">${a }</a></li>
                    			</c:otherwise>
                    		</c:choose>
                    	
                    	</c:forEach>
                    		
                    		<c:choose>
                    		
                    			<c:when test="${pageInfo.page >= pageInfo.maxPage }">
                    				<li><a href="#"><i class="fa fa-long-arrow-right"></i></a></li>
                    			</c:when>
                    			<c:otherwise>
                    				<li><a href="MemberWriteList.me?page=${pageInfo.page + 1 }"><i class="fa fa-long-arrow-right"></i></a></li>
                    			</c:otherwise>
                    		</c:choose>
                    </ul>
                    <!--/.pagination-->
                </div>
            </div>
            <!--/.row   페이징 처리-->
            
        </div>
    </section>
    <!--/#blog-->

    <!--/#bottom-->
<jsp:include page="/inc/bottom.jsp"/>
    <!--/#footer-->
    <script src="../js/jquery.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.prettyPhoto.js"></script>
    <script src="../js/owl.carousel.min.js"></script>
    <script src="../js/jquery.isotope.min.js"></script>
    <script src="../js/main.js"></script>
</body>
</html>