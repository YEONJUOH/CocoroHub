<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/carousel.js"></script>
</head>
<body>

	<!-- body -->
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img data-src="holder.js/900x500/auto/#777:#777" alt="900x500"
					src="../img/mainTestimg2.jpg" data-holder-rendered="true">
				<div class="carousel-caption">
					<h3>
						<b>Cocoro에 오신걸 환영합니다</b>
					</h3>
					<h2 class="text-center">
						<b>나만의 스터디를 만들어보세요 </b>
					</h2>


					<div class="input-group">
						<div class="input-group-btn search-panel">
							<button type="button" class="btn btn-default dropdown-toggle"
								data-toggle="dropdown">
								<span id="search_concept">스터디</span> <span class="caret"></span>
							</button>

							<ul class="dropdown-menu" role="menu">
								<li><a href="#id"><i class="fa fa-angle-double-right"></i>
										스터디</a></li>
								<li><a href="#name"><i class="fa fa-angle-double-right"></i>
										인물</a></li>
							</ul>

						</div>

						<input type="hidden" name="search_param" value="name"id="search_param"> 
						<input type="text" class="form-control" name="q" placeholder="Search.." id="search_key" value=""> <span class="input-group-btn">
							<button class="btn btn-info" type="submit">Search</button>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="page-header">
			<h1>관심사에따른 추천</h1>
		</div>

		<div class="row grid-divider">
			<div class="col-sm-3">
				<div class="col-padding">
					<h3>Column 1</h3>
				</div>
			</div>

			<div class="col-sm-3">
				<div class="col-padding">
					<h3>Column 2</h3>
				</div>
			</div>

			<div class="col-sm-3">
				<div class="col-padding">
					<h3>Column 3</h3>
				</div>
			</div>

			<div class="col-sm-3">
				<div class="col-padding">
					<h3>Column 3</h3>
				</div>
			</div>
		</div>
	</div>




	<!-- 
<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">도움말<span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>




 -->
</body>
</html>