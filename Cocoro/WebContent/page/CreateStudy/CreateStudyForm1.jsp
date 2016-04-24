<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../js/carousel.js"></script>
<title>Insert title here</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="/Scripts/jquery-1.9.0.js" type="text/javascript"></script>   
  <script src="/Scripts/jquery-ui-1.10.0.min.js" type="text/javascript"></script>  
  <script src="/Scripts/jquery.ui.datepicker-ko.js" type="text/javascript"></script>  
  <script type="text/javascript">
  $(function() {
    $( "#from" ).datepicker({
      dateFormat: 'yy-mm-dd', 
      closeText: '닫기',  
      prevText: '이전달',  
      nextText: '다음달',  
      currentText: '오늘',  
      monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],  
      monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],  
      dayNames: ['일', '월', '화', '수', '목', '금', '토'],  
      dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],  
      dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],  
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 3,
      minDate: dtNow,
      onClose: function( selectedDate ) {
        $( "#to" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#to" ).datepicker({
      dateFormat: 'yy-mm-dd',  
      closeText: '닫기',  
      prevText: '이전달',  
      nextText: '다음달',  
      currentText: '오늘',  
      monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],  
      monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],  
      dayNames: ['일', '월', '화', '수', '목', '금', '토'],  
      dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],  
      dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],  
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 3,
      onClose: function( selectedDate ) {
        $( "#from" ).datepicker( "option", "maxDate", selectedDate );
      }
    });
  });
  </script>
</head>
<body>
<form class="form-horizontal">
<fieldset>

<!-- 스터디 만들기  -->
<legend>나만의 스터디 만들기</legend>

<!-- 스터디 명  -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_name">스터디 명</label>  
  <div class="col-md-5">
  <input id="s_name" name="s_name" type="text" placeholder="예) 토익 성애자들의 모임" class="form-control input-md" required="">
  </div>
</div>
<br>

<!-- 스터디 소개  -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_intro">스터디 소개</label>  
  <div class="col-md-7">
  <input id="s_intro" name="s_intro" type="text" placeholder="예) 토익 만점 목표, 토익 800이상 가입가능" class="form-control input-md" required="">    
  </div>
</div>
<br>

<!-- 키워드 설정 -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_tag">키워드 설정</label>  
  <div class="col-md-7">
  <input id="s_tag" name="s_tag" type="text" placeholder="예) #토익 #성애자 #TOEIC #토익시험" class="form-control input-md" required="">
  <span class="help-block">이 키워드는 스터디 검색 시 사용됩니다.</span>  
  </div>
</div>


<!-- 스터디 종류  -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_mento_check">스터디 종류</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="s_mento_check-0">
      <input type="radio" name="s_mento_check" id="s_mento_check-0" value="S">
      스터디
    </label>
	</div>
  <div class="radio">
    <label for="s_mento_check-1">
      <input type="radio" name="s_mento_check" id="s_mento_check-1" value="T">
      튜터링
    </label>
	</div>
  </div>
</div>
<br>

<!-- 스터디 성격  -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_kind_check">스터디 성격</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="s_kind_check-0">
      <input type="radio" name="s_kind_check" id="s_kind_check-0" value="T">
      개방형
    </label>
	</div>
  <div class="radio">
    <label for="s_kind_check-1">
      <input type="radio" name="s_kind_check" id="s_kind_check-1" value="F">
      폐쇄형
    </label>
	</div>
  </div>
</div>
<br>


<!-- 모집 인원  -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_max_member">모집 인원</label>  
  <div class="col-md-2">
  <input id="s_max_member" name="s_max_member" type="text" placeholder="예) 5명" class="form-control input-md" required="">
    
  </div>
</div>
<br>

<!-- 스터디 기간 -->

<div class="form-group">
  <label class="col-md-4 control-label" for="s_start">스터디 기간</label>  
  	<div class="col-md-4" style="padding-top:5px; left:1px;">
		<label for="from"></label>
		<input type="text" id="from" name="from">
		<label for="to">~</label>
		<input type="text" id="to" name="to">
  </div>
</div>
 
<br>


<!-- 스터디 시간 설정 -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_time_check">스터디 시간 설정</label>
  <div class="col-md-4">
    <label class="radio-inline" for="s_time_check-0">
      <input type="radio" name="s_time_check" id="s_time_check-0" value="T">
      사용함
    </label>
    <label class="radio-inline" for="s_time_check-1">
      <input type="radio" name="s_time_check" id="s_time_check-1" value="F">
      사용안함
    </label>
  </div>
</div>
<br>

<!-- 계속 버튼  -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_next"></label>
  <div class="col-md-4">
    <button id="s_next" name="s_next" class="btn btn-primary">계속</button>
  </div>
</div>
</fieldset>
</form>
</body>
</html>