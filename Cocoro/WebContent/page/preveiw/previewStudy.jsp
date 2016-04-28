<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="cocoro.studygroup.model.StudyGroup"%>
<%@page import="cocoro.studygroup.service.StudyCRUDService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<% 
	request.setCharacterEncoding("utf-8");
	String id = "1"; /* request.getParameter("s_id"); */
	int s_id = 0;
	int hit = 0;
	if(id != null)
	{
		s_id = Integer.parseInt(id);
	}

	StudyCRUDService service = StudyCRUDService.getInstance();
	StudyGroup studygroup = service.selectStudyService(s_id);
	int re = service.updateHit(studygroup);
	if(re > 0)
	{
		hit = studygroup.getS_total_hit()+1;
		studygroup.setS_total_hit(hit);
		service.updateHit(studygroup);
	}
	
	request.setAttribute("studygroup", studygroup);

	System.out.println(studygroup.getS_mento_check());
%>       
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../js/carousel.js"></script>
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
<script type="text/javascript">
var chart = AmCharts.makeChart( "chartdiv", {
	  "type": "serial",
	  "theme": "light",
	  "dataProvider": [ {
	    "member": "김동현",
	    "rank": 5
	  }, {
	    "member": "오연주",
	    "rank": 7
	  }, {
	    "member": "정상효",
	    "rank": 9
	  }, {
	    "member": "최지웅",
	    "rank": 8
	  }, {
	    "member": "고석진",
	    "rank": 6
	  } ],
	  "valueAxes": [ {
	    "gridColor": "#FFFFFF",
	    "gridAlpha": 0.2,
	    "dashLength": 0
	  } ],
	  "gridAboveGraphs": true,
	  "startDuration": 1,
	  "graphs": [ {
	    "balloonText": "[[category]]: <b>[[value]]</b>",
	    "fillAlphas": 0.8,
	    "lineAlpha": 0.2,
	    "type": "column",
	    "valueField": "rank"
	  } ],
	  "chartCursor": {
	    "categoryBalloonEnabled": false,
	    "cursorAlpha": 0,
	    "zoomable": false
	  },
	  "categoryField": "member",
	  "categoryAxis": {
	    "gridPosition": "start",
	    "gridAlpha": 0,
	    "tickPosition": "start",
	    "tickLength": 10
	  },
	  "export": {
	    "enabled": true
	  }

	} );
</script>
<style type="text/css">
#chartdiv {
	width		: 100%;
	height		: 500px;
	font-size	: 11px;
}					
</style>
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
            <h3>스터디 리더 : 아이유</h3>
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
          
                <div class="col-xs-6 col-sm-6" id="first">
                    <h2>${studygroup.s_name}</h2>
                    <p><strong>스터디 소개: </strong> ${studygroup.s_intro} </p>
                    <p><strong>스터디 키워드: </strong> ${studygroup.s_tag}  </p>
                    <p><strong>모집 인원 </strong>
                    	<span class="fa fa-user">:</span> ${studygroup.s_max_member}
                    </p>
                    <p><strong>실력: </strong>
                    <c:if test="${studygroup.s_abil_check > 0}">
                    	<c:forEach var="k" begin="1" end="${studygroup.s_abil_check}"> 
                  		<span class="fa fa-star"></span>
                   		</c:forEach>
                   
                   
					<button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm"><i class="fa fa-search"></i></button>
					<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
 						 <div class="modal-dialog modal-sm">
   							 <div class="modal-content">
     						    <div id="chartdiv"></div>
   							 </div>
 						 </div>
					</div>
					</c:if>
					<c:if test="${studygroup.s_abil_check < 1}">
                   		<span>실력 정보 없음</span>
                   	</c:if>
                   </p>
                   <p><strong>디파짓:</strong>
    					<label>${studygroup.s_deposit}원</label>
    				</p>
    				<p><strong>출석체크: </strong>
    				<c:if test="${studygroup.s_attend_check=='T'}">
                    	<input type="checkbox" name="s_attend_check" id="s_attend_check-0" value="T" checked="" disabled="">사용함
                    	<input type="checkbox" name="s_attend_check" id="s_attend_check-1" value="F" disabled="">사용안함
    				</c:if>
    				<c:if test="${studygroup.s_attend_check=='F'}">
	    				<input type="checkbox" name="s_attend_check" id="s_attend_check-0" value="T" disabled="">사용함
    					<input type="checkbox" name="s_attend_check" id="s_attend_check-1" value="F" checked="" disabled="">사용안함
    				</c:if> 					
    				</p>
    				<p><strong>스터디 장소: </strong>
                    <c:if test="${studygroup.s_online=='T'}">
                        <input type="checkbox" name="s_online" id="s_online-0" value="T" checked="" disabled="">온라인
    				</c:if>
    				<c:if test="${studygroup.s_offline=='T'}">	
    					<input type="checkbox" name="s_offline" id="s_online-1" value="T" checked="" disabled="">오프라인
                    </c:if>
                    </p>
                    <p><strong>스터디 성격: </strong>
                    <c:if test="${studygroup.s_mento_check=='T'}">
                    	<input type="checkbox" name="s_mento_check" id="s_mento_check-0" value="T" checked="" disabled="">튜터링
                    	<input type="checkbox" name="s_mento_check" id="s_mento_check-1" value="S" disabled="">스터디
    				</c:if>
    				<c:if test="${studygroup.s_mento_check=='S'}">
	    				<input type="checkbox" name="s_mento_check" id="s_mento_check-0" value="T" disabled="">튜터링
    					<input type="checkbox" name="s_mento_check" id="s_mento_check-1" value="S" checked="" disabled="">스터디
                    </c:if>
                    </p>
                    <p><strong>스터디 종류: </strong>
                    <c:if test="${studygroup.s_kind_check=='T'}">
                    	<input type="checkbox" name="s_kind_check" id="s_kind_check-0" value="T" checked="" disabled="">개방형
    					<input type="checkbox" name="s_kind_check" id="s_kind_check-1" value="F" disabled="">폐쇄형
    				</c:if> 
    				 <c:if test="${studygroup.s_kind_check=='F'}">
                    	<input type="checkbox" name="s_kind_check" id="s_kind_check-0" value="T" disabled="">개방형
    					<input type="checkbox" name="s_kind_check" id="s_kind_check-1" value="F" checked="" disabled="">폐쇄형
    				</c:if>      
                    </p>
                </div> 
             <div class="col-xs-6 col-sm-6" id="second">
            		<p style="margin-top:40px"></p>
             		<p><strong>오프라인 모임 위치: </strong>
					   <label>서울시 가산동 103-1 이노플렉스</label>             	
             		<p style="margin-top:4px"></p>
   
<div id="map" style="width:100%;height:200px;"></div>

<p id="infoDiv"></p>
    
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=3cd0e2fbd6251c82935cf18a47f510a6&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(37.47881934201458, 126.88100114585106), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
var mapTypeControl = new daum.maps.MapTypeControl();

// 지도 타입 컨트롤을 지도에 표시합니다
map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

    var infoDiv = document.getElementById('infoDiv');
    infoDiv.innerHTML = message;

</script>
             	</p>
             	</div>
                       <p style="margin-top:20px"></p>
                    <p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;스터디 기간: </strong>
                    	<label>2016년 5월 1일</label>
                    	<label>~</label>
                    	<label>2016년 7월 1일</label>                    	
                    </p>
                 
                    <p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;스터디 시간: </strong>
                    	<label>오후5시</label>
                    	<label>~</label>
                    	<label>오후7시</label>                    	
                    </p>
    				
    		
                    
    			
    				
                       
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
