<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--==========================
    Header
  ============================-->
<header id="header">
	<div class="container">

		<div id="logo" class="pull-left">
			<h1>
				<a href="main.do" class="scrollto">
					<img src="images/logo_1.png" style="width: 150px; height: 50px">
				</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="#body"><img src="img/logo.png" alt="" title="" /></a>-->
		</div>

		<nav id="nav-menu-container">
			<ul class="nav-menu">
				<li class="navi_menu" id="nav-main">
					<a href="main.do">Home</a>
				</li>
				<li class="navi_menu" id="nav-resume">
					<a href="resume.do">기사 게시판</a>
				</li>
				<li class="navi_menu" id="nav-intro">
					<a href="introduction.do">자유 게시판</a>
				</li>
				<li class="navi_menu" id="nav-portfolio">
					<a href="portfolio.do">1:1문의</a>
				</li>
			</ul>
		</nav>
		<!-- #nav-menu-container -->
	</div>
</header>
<!-- #header -->
<script>
	$("#"+"<c:out value="${pageName }"/>").addClass("menu-active");
</script>