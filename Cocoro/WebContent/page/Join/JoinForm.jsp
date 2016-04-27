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
<script src="../../js/BootStrap/bootstrap.min.js"></script>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../../js/Join/jquery.validate.min.js"></script>
<script type="text/javascript" src="../../js/Join/additional-methods.min.js"></script>

<script type="text/javascript">
	$(function() {
		$("form").validate({
			//validation이 끝난 이후의 submit 직전 추가 작업할 부분
			submitHandler : function() {
				var f = confirm("회원가입을 완료하겠습니까?");
				if (f) {
					return true;
				} else {
					return false;
				}
			},
			//규칙
			rules : {
				id : {
					required : true,
					minlength : 5,
					remote : "/check_id.jsp"
				},
				password : {
					required : true,
					minlength : 3
				},
				repassword : {
					required : true,
					minlength : 3,
					equalTo : password
				},
				name : {
					required : true,
					minlength : 2
				},
				email : {
					required : true,
					minlength : 2,
					email : true
				},
				//규칙체크 실패시 출력될 메시지
				messages : {
					id : {
						required : "필수로입력하세요",
						minlength : "최소 {0}글자이상이어야 합니다",
						remote : "존재하는 아이디입니다"
					},
					password : {
						required : "필수로입력하세요",
						minlength : "최소 {0}글자이상이어야 합니다"
					},
					repassword : {
						required : "필수로입력하세요",
						minlength : "최소 {0}글자이상이어야 합니다",
						equalTo : "비밀번호가 일치하지 않습니다."
					},
					name : {
						required : "필수로입력하세요",
						minlength : "최소 {0}글자이상이어야 합니다"
					},
					email : {
						required : "하이하이아ㅣ",
						minlength : "최소 {0}글자이상이어야 합니다",
						email : "메일규칙에 어긋납니다"
					}
				}
			}
		})
	});
</script>
</head>
<body style="width: 400px;">
<h3 class="text-center">Cocoro 회원가입 </h3>
<hr>
<form>
<!-- 이메일 -->
  <div class="form-group has-success">
  <div class="input-group">
    <input type="text" class="form-control" id="email" name="email" placeholder="이메일을 입력해주세요" >
    <span class="input-group-addon glyphicon glyphicon-envelope"></span>
  </div>
</div>
<!-- 비밀번호 -->
<div class="form-group has-success">
  <div class="input-group">
  <div class="">
    <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호를 입력해주세요" >
   </div>
    <span class="input-group-addon glyphicon glyphicon-lock"></span>
  </div>
</div>
<!-- 비밀번호 체크  -->
<div class="form-group has-success">
  <div class="input-group">
    <input type="password" class="form-control" id="repassword" name="repassword" placeholder="비밀번호를 확인해주세요" >
    <span class="input-group-addon glyphicon glyphicon-lock"></span>
  </div>
</div>
<!-- 이름 -->
<div class="form-group has-success">
  <div class="input-group">
    <input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력해주세요" >
    <span class="input-group-addon glyphicon glyphicon glyphicon-user"></span>
  </div>
</div>
<!-- 주소  -->
<div class="col-md-12">
	주소넣는곳 <공사중>

</div>
<br><br>
<!-- 생년월일 -->
<p class="text-center">생년월일</p>
<div class="col-md-12">
	<div class="col-xs-4">
		<select class="form-control">
		<option>월</option>
		<%for(int i=1;i<13;i++){ %>
		<option value="<%=i%>"><%=i%></option>
		<%} %>
		</select>
	</div>
		<div class="col-xs-4">
		<select class="form-control" value="월">
		<option>일</option>
		<%for(int i=1;i<32;i++){ %>
		<option value="<%=i%>"><%=i%></option>
		<%} %>
		</select>
	</div>
	
		<div class="col-xs-4">
		<select class="form-control">
		<option>년</option>
		<%for(int i=2016;i>1896;i--){ %>
		<option value="<%=i%>"><%=i%></option>
		<%} %>
		</select>
	</div>
</div>	
<br><br><br>

<!-- 성별 -->
<div class="col-md-12">
	<p class="text-center">성별</p>
	<div class="text-center">
  	<input type="radio" name="gender" id="gender" value="남"> 남
  	<input type="radio" name="gender" id="gender" value="여"> 여
  	</div>
</div>
<br>
 <button type="submit" class="btn btn-block  btn-success">제출</button>
</form>
</body>
</html>