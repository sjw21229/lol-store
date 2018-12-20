<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>首页</title>
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style >
	#ab_us li{
		display:inline;
	}
	#ab_li li a{
		text-decoration: none;
	}
	#ab_li a:link{
		color: black;
	}
	.products{
		margin: auto;
		width: 25%; 
		text-align: center;
		float:left;
		margin-top: 70px;
		font-size: 20px;
		font-family: "微软雅黑";
		
	}
</style>
</head>
<body style="width: 1280px;margin: auto">
	<div id="myCarousel" class="carousel slide">
		<!-- 轮播（Carousel）指标 -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<!-- 轮播（Carousel）项目 -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="${pageContext.request.contextPath }/img/1/20181105235605_306901.jpg" alt="First slide">
				<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<img src="${pageContext.request.contextPath }/img/1/20181106110317_479833.jpg" alt="Second slide">
				<div class="carousel-caption"></div>
			</div>
			<div class="item">
				<img src="${pageContext.request.contextPath }/img/1/20181106113847_454360.jpg" alt="Third slide">
				<div class="carousel-caption"></div>
			</div>
		</div>
		<!-- 轮播（Carousel）导航 -->
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<table width="100%" style="margin-top:20px;font-size: 30px;font-family: 微软雅黑">
		<tr style="height: 50px;background-color: #d3d9df;" >
			<td width="25%" align="center"><a href="/lol/listProduct">首页</a></td>
			<td width="25%" align="center"><a href="/lol/showzixun">资讯</a></td>
			<td width="25%" align="center">购物车</td>
			<td width="25%" align="center">订单</td>
		</tr>
	</table>
	<c:forEach items="${productList }" var="pro">
		<div class="products">
			<div>
				<img width="100%" src="${pageContext.request.contextPath }/img/${pro.pimage}">
			</div>
			<div>
				<a href="${pageContext.request.contextPath }/showproductone?pid=${pro.pid}">${pro.pname }<br/>¥${pro.price }元</a>
			</div>
		</div>
	</c:forEach>
	<!-- <div id="ab_us">
		<ul id="ab_li">
			<li><a href="#">关于我们</a></li>
			<li><a href="#">加入我们</a></li>
			<li><a href="#">联系我们</a></li>
			<li><a href="#">成为我们</a></li>
		</ul>
	</div>
	<div id="copy">
		&copy;版权所有	
	</div> -->
</body>
</html>