<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <jsp:forward page="/egovSampleList.do"/> --%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Modern Business - Start Bootstrap Template</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/modern-business.css" rel="stylesheet">
<style>
th.middle {
	vertical-align: middle;
}
</style>

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="index.html">Start Bootstrap</a>
			<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="about.html">About</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="services.html">Services</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contact.html">Contact</a>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Portfolio </a>
						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
							<a class="dropdown-item" href="board.jsp">자유게시판</a>
							<a class="dropdown-item" href="portfolio-2-col.html">2 Column Portfolio</a>
							<a class="dropdown-item" href="portfolio-3-col.html">3 Column Portfolio</a>
							<a class="dropdown-item" href="portfolio-4-col.html">4 Column Portfolio</a>
							<a class="dropdown-item" href="portfolio-item.html">Single Portfolio Item</a>
						</div>
					</li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Blog </a>
						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="blog-home-1.html">Blog Home 1</a>
							<a class="dropdown-item" href="blog-home-2.html">Blog Home 2</a>
							<a class="dropdown-item" href="blog-post.html">Blog Post</a>
						</div>
					</li>
					<li class="nav-item active dropdown">
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Other Pages </a>
						<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
							<a class="dropdown-item" href="full-width.html">Full Width Page</a>
							<a class="dropdown-item active" href="sidebar.html">Sidebar Page</a>
							<a class="dropdown-item" href="faq.html">FAQ</a>
							<a class="dropdown-item" href="404.html">404</a>
							<a class="dropdown-item" href="pricing.html">Pricing Table</a>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h2 class="mt-4 mb-3">
			자유게시판 상세화면
			<!-- <small>Subheading</small> -->
		</h2>

		<!-- <ol class="breadcrumb">
			<li class="breadcrumb-item">
				<a href="index.html">Home</a>
			</li>
			<li class="breadcrumb-item active">About</li>
		</ol> -->

		<!-- Content Row -->
		<div class="row">
			<!-- Sidebar Column -->
			<!-- <div class="col-lg-3 mb-4">
				<div class="list-group">
					<a href="index3.jsp" class="list-group-item">나의 정보</a>
					<a href="index.jsp" class="list-group-item">나의 문의 내역</a>
					<a href="index2.jsp" class="list-group-item">나의 신청 내역</a>
				</div>
			</div> -->
			<!-- Content Column -->
			<div class="col-lg-12 mb-1">
				<!-- <h2>자유게시판</h2> -->
				<%-- <table class="table table-hover">
					<thead class="bg-dark text-white text-center">
						<tr>
							<td width="10%">번호</td>
							<td width="55%">제목</td>
							<td width="10%">작성자</td>
							<td width="15%">작성일</td>
							<td width="15%">조회수</td>
						</tr>
					</thead>

					<tbody>
						<c:forEach begin="1" end="5" varStatus="i">
							<tr>
								<td class="text-center">
									<c:out value="${i.count }" />
								</td>
								<td>제목</td>
								<td class="text-center">user123</td>
								<td class="text-center">2019/01/01</td>
								<td class="text-center">1234</td>
							</tr>
						</c:forEach>
					</tbody>
				</table> --%>
				
				<table class="table table-bordered">
				  <tbody>
				    <tr>
				      <th class="text-center middle" scope="row">제목</th>
				      <td>
				      	<input class="form-control" type="text" placeholder="Default input">
				      </td>
				    </tr>
				    <tr>
				      <th class="text-center middle" scope="row">작성자</th>
				      <td>
				      	<input class="form-control" type="text" placeholder="Default input">
				      </td>
				    </tr>
				    <tr>
				      <th class="text-center middle" scope="row">파일 첨부</th>
				      <td>
						<form>
						  <div class="form-group">
						    <input type="file" class="form-control-file" id="exampleFormControlFile1">
						  </div>
						</form>
				      </td>
				    </tr>
				    <tr>
				      <th class="text-center middle" scope="row">내용</th>
				      <td>
				      	<form>
					      	<div class="form-group">
								<textarea class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
							</div>
						</form>						
				      </td>
				    </tr>
				  </tbody>
				</table>
				
				<div class="row mb-3">
					<div class="col-12 pl-3 pr-1"></div>
					<div class="col-10 pl-3 pr-1"></div>
					<div class="col-1 pl-0 pr-1">
						<button class="form-control form-control-sm" onclick="cancel()">취소</button>
					</div>
					<div class="col-1 pl-0">
						<button class="form-control form-control-sm" onclick="save()">저장</button>
					</div>
				</div>

			</div>
		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script>
	function cancel() {
		history.go(-1);
	}
	function save() {
		history.go(-1);
	}
	</script>

</body>

</html>
