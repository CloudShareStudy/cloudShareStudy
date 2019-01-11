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
		
		<div class="row mb-3">
			<div class="col-1 pl-3 pr-1"></div>
			<div class="col-10 pl-0 pr-1"></div>
			<div class="col-1 pl-0">
				<button class="form-control form-control-sm" onclick="pre()">목록</button>
			</div>
		</div>

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
			<div class="col-lg-12 mb-8">				
				<table class="table">
				  <thead class="thead-light">
				    <tr>
				      <th scope="col" colspan="2">
				      	<div class="row mb-1">
							<div class="col-10 pl-3 pr-1">여기는 제목이 채워지는 부분입니다.</div>
							<div class="col-1 pl-0 pr-1"></div>
							<div class="col-1 pl-0">
								<label><small>조회수: 1234</small></label>
							</div>
						</div>
						<div class="row mb-1">
							<div class="col-1 pl-3 pr-1"><small>user1234</small></div>
							<div class="col-10 pl-0 pr-1"><small>2019.01.01</small></div>
							<div class="col-1 pl-0"></div>
						</div>
				      </th>
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <td colspan="2">여기는 내용이 채워지는 부분입니다.</td>
				    </tr>
				  </tbody>
				</table>
				
				<!-- Comments Form -->
				<div class="card my-4">
					<h5 class="card-header">Leave a Comment:</h5>
					<div class="card-body">
						<form>
							<div class="form-group">
								<textarea class="form-control" rows="3"></textarea>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
				
				<!-- Single Comment -->
				<div class="media mb-4">
					<img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
					<div class="media-body">
						<h5 class="mt-0">Commenter Name</h5>
						Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
					</div>
				</div>
				
				<!-- Comment with nested comments -->
				<div class="media mb-4">
					<img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
					<div class="media-body">
						<h5 class="mt-0">Commenter Name</h5>
						Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
						
						<div class="media mt-4">
							<img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
							<div class="media-body">
								<h5 class="mt-0">Commenter Name</h5>
								Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
							</div>
						</div>
				
						<div class="media mt-4">
							<img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
							<div class="media-body">
								<h5 class="mt-0">Commenter Name</h5>
								Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
							</div>
						</div>
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
	function pre() {
		history.go(-1);
	}
	</script>

</body>

</html>
