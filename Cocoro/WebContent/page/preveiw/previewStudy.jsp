<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/css?family=Lato:400,700);
body
{
    font-family: 'Lato', 'sans-serif';
    }
.profile 
{
    min-height: 355px;
    display: inline-block;
    }
figcaption.ratings
{
    margin-top:20px;
    }
figcaption.ratings a
{
    color:#f1c40f;
    font-size:11px;
    }
figcaption.ratings a:hover
{
    color:#f39c12;
    text-decoration:none;
    }
.divider 
{
    border-top:1px solid rgba(0,0,0,0.1);
    }
.emphasis 
{
    border-top: 4px solid transparent;
    }
.emphasis:hover 
{
    border-top: 4px solid #1abc9c;
    }
.emphasis h2
{
    margin-bottom:0;
    }
span.tags 
{
    background: #1abc9c;
    border-radius: 2px;
    color: #f5f5f5;
    font-weight: bold;
    padding: 2px 4px;
    }
.dropdown-menu 
{
    background-color: #34495e;    
    box-shadow: none;
    -webkit-box-shadow: none;
    width: 250px;
    margin-left: -125px;
    left: 50%;
    }
.dropdown-menu .divider 
{
    background:none;    
    }
.dropdown-menu>li>a
{
    color:#f5f5f5;
    }
.dropup .dropdown-menu 
{
    margin-bottom:10px;
    }
.dropup .dropdown-menu:before 
{
    content: "";
    border-top: 10px solid #34495e;
    border-right: 10px solid transparent;
    border-left: 10px solid transparent;
    position: absolute;
    bottom: -10px;
    left: 50%;
    margin-left: -10px;
    z-index: 10;
}

.fb-profile img.fb-image-lg{
    z-index: 0;
    width: 100%;  
    margin-bottom: 10px;
}

.fb-image-profile
{
    margin: -90px 10px 0px 50px;
    z-index: 9;
    width: 20%; 
}

@media (max-width:768px)
{
    
.fb-profile-text>h1{
    font-weight: 700;
    font-size:16px;
}

.fb-image-profile
{
    margin: -45px 10px 0px 25px;
    z-index: 9;
    width: 20%; 
}

</style>
</head>
<body>
<div class="container">
    <div class="fb-profile">
        <img align="left" class="fb-image-lg" src="http://tafebytes.com.au/wp-content/uploads/2012/11/study-group.jpg" alt="Profile image example"/>
        <img align="left" class="fb-image-profile thumbnail" src="http://1.soompi.io/wp-content/uploads/2015/02/IU.jpg" alt="Profile image example"/>
        <div class="fb-profile-text">
            <h3>아이유</h3>
            <p>IUislove@gmail.com</p>
        </div>
    </div>
</div>

<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">
<div class="container">
	<div class="row">
		<div class="col-lg-12">
    	 <div class="well profile col-lg-12">
            <div class="col-sm-12">
                <div class="col-xs-12 col-sm-12">
                    <h2>토익 성애자들의 모임</h2>
                    <p><strong>스터디 소개: </strong> 토익 만점 목표, 토익 800이상 가입가능 </p>
                    <p><strong>스터디 키워드: </strong> #토익 #성애자 #TOEIC #토익시험 </p>
                    <p><strong>모집 인원 </strong>
                    	<span class="fa fa-user">:</span> 6명
                    </p>
                    <p><strong>실력: </strong>
                  		<span class="fa fa-star"></span>
                   		<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    	<span class="fa fa-star"></span>
                    <a href="../modal/abil_chart.jsp"><i class="fa fa-search"></i></a>
                    </p>
    				<p><strong>디파짓:</strong>
    					<label>30000원</label>
    				</p>
    				<p><strong>출석체크: </strong>
                    	<input type="checkbox" name="s_attend_check" id="s_attend_check-0" value="T">사용함
    					<input type="checkbox" name="s_attend_check" id="s_attend_check-1" value="F">사용안함
    				</p>
    				<p><strong>스터디 종류: </strong>
                        <input type="checkbox" name="s_online" id="s_online-0" value="T">온라인
    					<input type="checkbox" name="s_online" id="s_online-1" value="F">오프라인
                    </p>
                </div>             
            </div>            
            <div class="col-xs-12 text-center">
                <div class="col-xs-12 col-sm-4 emphasis">
                    <button class="btn btn-success btn-block"><span class="fa fa-plus-circle"></span> 가입신청 </button>
                </div>
            </div>
        </div>                 
	  </div>
    </div>
  </div>
</body>
</html>
