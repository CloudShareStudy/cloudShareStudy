<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
			
		function mCertificate(){
			alert("d");
			IMP.init("imp00000000");
			
			// IMP.certification(param, callback) 호출
		   IMP.certification({ // param
		       merchant_uid: "ORD20180131-0000011"
		   }, function (rsp) { // callback
		       if (rsp.success) {
		           alert("성공");
		       } else {
		    	   alert("실패");
		       }
		   });
		}
		
   /* 입력확인 */
   $(function() {
	   document.getElementById('mobilecc').addEventListener('click',mCertificate);
	   
	   
	
   })
</script>
<style>
.mybtn {
	height: 46px;
	background-color: #EFF1F2;
	color: #818182;
	border: 1px solid #c6c5c5;
}

.no-ra {
	border-radius: 0;
}

.redbutton {
	background-color: #428dff !important;
}
</style>

<div class="row" style="margin-top: 10%; margin-bottom: 10%">
	<div class="mx-auto text-center col-lg-3">
		<div class="form-group mt-3">
			<span class="float-left">이메일</span>
			<input type="text" name="id" id="id" class="form-control w-100" placeholder="이메일을 입력해주세요">
		</div>
		<div class="form-group mt-3">
			<span class="float-left">이름</span>
			<input type="text" name="id" id="id" class="form-control w-100" placeholder="이름을 입력해주세요">
		</div>

		<div class="form-group">
			<span class="float-left">비밀번호</span>
			<input type="password" name="pass" id="pass" class="form-control w-100" placeholder="비밀번호">
		</div>

		<div class="form-group">
			<span class="float-left">비밀번호 확인</span>
			<input type="password" name="pass" id="pass" class="form-control w-100" placeholder="비밀번호 확인">
		</div>

		<div class="form-group">
			<span class="float-left">휴대폰 정보</span><br>
			<div class="form-inline">
				<select class="form-control w-17 mr-2">
					<option value="010">010</option>
				</select>
				-
				<input type="number" name="seconde" id="pass" class="form-control w-25 mr-2 ml-2">
				-
				<input type="number" name="third" id="pass" class="form-control w-25 mr-2 ml-2">
				<button type="button" id="mobilecc" class="mybtn form-control w-20">인증하기</button>
			</div>
		</div>
		<div class="form-group">
			<span class="float-left">인증번호 확인</span><br>
			<div class="form-inline">
				<input type="number" name="" id="pass" class="form-control w-40 mr-2" placeholder="폰번">
				<button type="button" id="btnLogin" class="mybtn form-control no-ra">인증번호 확인</button>
			</div>
		</div>
		<div class="form-group">
				<span class="float-left">성별</span><br>
				<i class="float-left fa fa-check-circle-o mr-2">남자</i>
				<i class="float-left fa fa-check-circle-o mb-3" style="color:#b7b2b2">여자</i>
		</div>
		<div class="form-group">
			<button type="button" id="btnLogin" class="redbutton form-control no-ra">가입하기</button>
		</div>
	</div>
</div>
