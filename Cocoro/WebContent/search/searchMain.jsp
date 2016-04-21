<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
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

					<div class="col-md-3">
						<div class="dropdown">
							<button class="btn btn-primary dropdown-toggle" type="button"
								data-toggle="dropdown">
								스터디 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">스터디</a></li>
								<li><a href="#">인물</a></li>
							</ul>
						</div>

					</div>
					<div class="col-md-9">
						<input type="text" class="form-control" id="search"
							placeholder="당신의 관심사를 넣어주세요">
						<button type="button" class="btn btn-lg btn-primary">검색</button>
					</div>

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