<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../js/carousel.js"></script>
</head>
<body>
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>나만의 스터디 만들기</legend>

<!-- 스터디 장소  -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_online">스터디 장소</label>
  <div class="col-md-4">
  <div class="checkbox">
    <label for="s_online-0">
      <input type="checkbox" name="s_online" id="s_online-0" value="T">
      온라인
    </label>
	</div>
  <div class="checkbox">
    <label for="s_online-1">
      <input type="checkbox" name="s_online" id="s_online-1" value="F">
      오프라인
    </label>
	</div>
  </div>
</div>
<br>


<!-- 오프라인스터디 위치 설정  -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_location">오프라인 모임 장소</label>  
  <div class="col-md-2">
  <input id="s_location" name="s_location" type="text" placeholder="" class="form-control input-sm"> 
  </div>
  <button id="s_location" name="s_location" class="btn btn-primary">위치검색</button>
  
</div>

<!-- 출석체크 기능 -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_attend_check">출석체크 기능</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="s_attend_check-0">
      <input type="radio" name="s_attend_check" id="s_attend_check-0" value="T" checked="checked">
      사용함
    </label> 
    <label class="radio-inline" for="s_attend_check-1">
      <input type="radio" name="s_attend_check" id="s_attend_check-1" value="F">
      사용안함
    </label>
  </div>
</div>

<br>

<!-- 디파짓 기능 -->

<div class="form-group">
  <label class="col-md-4 control-label" for="s_deposit">디파짓 기능</label>
  <div class="col-md-4">
    <label class="radio-inline" for="s_deposit-0">
     <input type="radio" name="s_deposit" id="s_deposit-0" value="0" checked="checked">
      사용함
    </label>
    <label class="radio-inline" for="s_deposit-1">
          <input type="radio" name="s_deposit" id="s_deposit-1" value="-1">
      사용안함
    </label>
    &nbsp;&nbsp;&nbsp;
    <button id="s_deposit_set" name="s_deposit_set" class="btn btn-primary">디파짓 설정</button>
  </div>
</div>

<br><br>



<!-- 실력 조건 설정 -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_abil_check">실력조건 설정</label>
  <div class="col-md-4">
    <label class="radio-inline" for="s_abil_check-0">
      <input type="radio" name="s_abil_check" id="s_abil_check-0" value="T">
      사용함
    </label>
    <label class="radio-inline" for="s_abil_check-1">
      <input type="radio" name="s_abil_check" id="s_abil_check-1" value="F">
      사용안함
    </label>
    &nbsp;&nbsp;&nbsp;
    <button id="s_abil_set" name="s_abil_set" class="btn btn-primary">실력 설정</button>
  </div>
</div>
<br><br>

<!-- 확인 or 취소 -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_confirm"></label>
  <div class="col-md-8">
    <button id="s_confirm" name="s_confirm" class="btn btn-success">확인</button>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <button id="s_cancel" name="s_cancel" class="btn btn-danger">취소</button>
  </div>
</div>

</fieldset>
</form>
</body>
</html>