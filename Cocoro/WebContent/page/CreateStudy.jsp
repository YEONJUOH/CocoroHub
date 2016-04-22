<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>스터디 만들기</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_name">스터디 명</label>  
  <div class="col-md-5">
  <input id="s_name" name="s_name" type="text" placeholder="예) 토익 성애자들의 모임" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_intro">스터디 소개</label>  
  <div class="col-md-8">
  <input id="s_intro" name="s_intro" type="text" placeholder="예) 토익 만점 목표, 토익 800이상 가입가능" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_tag">키워드 설정</label>  
  <div class="col-md-8">
  <input id="s_tag" name="s_tag" type="text" placeholder="예) #토익 #성애자 #TOEIC #토익시험" class="form-control input-md" required="">
  <span class="help-block">이 키워드는 스터디 검색 시 사용됩니다.</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_start">스터디 기간</label>  
  <div class="col-md-4">
  <input id="s_start" name="s_start" type="text" placeholder="예) 2016.05.15" class="form-control input-md">
    
  </div>
</div>

<!-- Multiple Checkboxes -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_mento_check">스터디 종류</label>
  <div class="col-md-4">
  <div class="checkbox">
    <label for="s_mento_check-0">
      <input type="checkbox" name="s_mento_check" id="s_mento_check-0" value="S">
      스터디
    </label>
	</div>
  <div class="checkbox">
    <label for="s_mento_check-1">
      <input type="checkbox" name="s_mento_check" id="s_mento_check-1" value="T">
      튜터링
    </label>
	</div>
  </div>
</div>

<!-- Multiple Checkboxes -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_kind_check">스터디 성격</label>
  <div class="col-md-4">
  <div class="checkbox">
    <label for="s_kind_check-0">
      <input type="checkbox" name="s_kind_check" id="s_kind_check-0" value="T">
      개방형
    </label>
	</div>
  <div class="checkbox">
    <label for="s_kind_check-1">
      <input type="checkbox" name="s_kind_check" id="s_kind_check-1" value="F">
      폐쇄형
    </label>
	</div>
  </div>
</div>

<!-- Multiple Checkboxes -->
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

<!-- Multiple Checkboxes -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_time_check">출석체크 기능</label>
  <div class="col-md-4">
  <div class="checkbox">
    <label for="s_time_check-0">
      <input type="checkbox" name="s_time_check" id="s_time_check-0" value="T">
      사용함
    </label>
	</div>
  <div class="checkbox">
    <label for="s_time_check-1">
      <input type="checkbox" name="s_time_check" id="s_time_check-1" value="F">
      사용안함
    </label>
	</div>
  </div>
</div>

<!-- Multiple Checkboxes -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_deposit">디파짓 기능</label>
  <div class="col-md-4">
  <div class="checkbox">
    <label for="s_deposit-0">
      <input type="checkbox" name="s_deposit" id="s_deposit-0" value="0">
      사용함
    </label>
	</div>
  <div class="checkbox">
    <label for="s_deposit-1">
      <input type="checkbox" name="s_deposit" id="s_deposit-1" value="-1">
      사용안함
    </label>
	</div>
  </div>
</div>

<!-- Button Drop Down -->
<div class="form-group">
  <label class="col-md-4 control-label" for="s_max_member">모집 인원</label>
  <div class="col-md-4">
    <div class="input-group">
      <input id="s_max_member" name="s_max_member" class="form-control" placeholder="" type="text" required="">
      <div class="input-group-btn">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
          선택
          <span class="caret"></span>
        </button>
        <ul class="dropdown-menu pull-right">
          <li><a href="#">1명</a></li>
          <li><a href="#">2명</a></li>
          <li><a href="#">3명</a></li>
          <li><a href="#">4명</a></li>
          <li><a href="#">5명</a></li>
          <li><a href="#">6명</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>

<!-- Button -->
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