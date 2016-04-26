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
<style type="text/css">
#penalty_set{margin-left:75px;}
#set_deposit{margin-left:15px;margin-top:5px;}
#confirm{margin-left:60px;margin-bottom:60px;}
#deposit_attribute{margin-top:20px;margin-left:5px;}
</style>
<title>Insert title here</title>

 
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
      <input type="radio" name="s_mento_check" id="s_mento_check-0" value="S" checked="checked">
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
      <input type="radio" name="s_kind_check" id="s_kind_check-0" value="T" checked="checked">
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
  <button type="button" class="btn btn-primary" id="s_deposit_set" name="s_deposit_set" data-toggle="modal" data-target=".deposit_set">디파짓 설정</button>

	
	<div class="modal fade deposit_set" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
    	<div class="modal-dialog modal-md">
        	<div class="modal-content">
   	<!-- 여기부터 디파짓 모달  -->
 
		<fieldset>
		<table class="table table-striped">
			<div class="row" id="deposit_attribute">
  				<div class="col-md-4">
  					<label class="col-md-3 control-label" for="p_id">No.</label>  
  				</div>
  				<div class="col-md-4">
 					<label class="col-md-3 control-label" for="p_name">Name</label>
  				</div>
  				<div class="col-md-4">
    				<label class="col-md-3 control-label" for="p_price">Value</label>
 				 </div>
			</div>
			<hr>
			<div class="row" id="penalty_show">
 					<label class="col-md-4 control-label" style="left:-130px;" for="show_p_id">1</label>
  					<label class="col-md-4 control-label" style="left:-130px;" for="show_p_name">지각</label>
  					<label class="col-md-4 control-label" style="left:-130px;" for="show_p_price">500원</label>
  			</div><br>
			<hr>
			<div class="row" id="penalty_set">
  				<div class="col-md-4">
   					<input type="text" id="p_name" name="p_name" class="form-control" placeholder="예)결석 ">
  				</div>
  				<div class="col-md-4">
     				<input type="text" id="p_price" name="p_price" class="form-control" placeholder="예)10000원">
  				</div>
  				<div class="col-md-4">
 				 	<button id="penaltyAdd" name="penaltyAdd" class="btn btn-primary">추가</button>
		  		</div>
			</div><br>
		</table>
		
		<div class="row" id="deposit_set">
				<label class="col-md-5 control-label" for="p_id">&nbsp;&nbsp;디파짓 설정</label>
  				<input class="col-md-3" type="text" id="set_deposit" name="set_deposit" class="form-control" placeholder="예)50000원">
			</div><br>
			
		<div class="center-block" id="confirm">
 	 		<label class="col-md-3 control-label" for="d_confirm"></label>
  			<div class="col-md-9">
   				<button id="s_confirm" name="d_confirm" class="btn btn-success">확인</button>
    			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
  				<button id="s_cancel" name="d_cancel" class="btn btn-danger">취소</button>
		    </div>
		</div>
	</fieldset>
   
  
   			 </div>
 		 </div>
	</div> 
  </div>
</div>

<br><br>

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