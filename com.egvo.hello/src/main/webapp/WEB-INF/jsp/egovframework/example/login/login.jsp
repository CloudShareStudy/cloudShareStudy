<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
	$(document).ready(function() {

		$("#aCheck").click(function() {
			$("#check_img").attr('src','http://localhost:8082/img/log_join/checked.png');
		});

		$("#btnLogin").click(function() {
			if ($("#id").val() == "") {
				alert("아이디를 입력하세요");
				$("#id").focus();
				return false;
			} else if ($("#pass").val() == "") {
				alert("비밀번호를 입력하세요");
				$("#pass").focus();
				return false;
			}
			loginForm.submit();
		});
	});
</script>

<style>
.no-ra {
	border-radius: 0;
}

.font_gray_bar {
	padding: 0px 15px 0px 25px !important;
}

.font_gray {
	padding: 0px 0px 0px 0px !important;
}

.login_check_table {
	width: 100%;
}

.redbutton {
	background-color: #428dff !important;
}
</style>
<div class="row mt-5 mb-5">
	<div class="mx-auto text-center col-lg-3 p-4" style="border:1px solid #c6c5c5;border-radius:5px">
		<div class="form-group mt-3">
			<span class="float-left">이메일</span>
			<input type="text" name="id" id="id" class="form-control no-ra" placeholder="아이디" style="padding: 20px;">
		</div>
		<div class="form-group">
			<span class="float-left">비밀번호</span>
			<input type="password" name="pass" id="pass" class="form-control no-ra" placeholder="비밀번호" style="padding: 20px;">
		</div>
		<div class="form-group">
			<i class="fa fa-check-circle-o float-right"><span>로그인 기억</span></i>
		</div>
		<div class="form-group mt-5">
			<button type="button" id="btnLogin" class="redbutton form-control no-ra">로그인</button>
		</div>
		
		<div class="form-group mt-3">
			<a class="float-left" href="join.do" style="color:black">아이디/비밀번호 찾기</a>
			<a class="float-right" href="join.do" style="color:black">회원가입</a>
		</div>
	</div>
</div>

