<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
   /* 입력확인 */
   $(function() {
	   
	   $("#btnJoin").click(function() {
           if ($("#id").val() == "") {
              alert("아이디를 입력해주세요");
              $("#id").focus();
              return false;
           } else if ($("#pass").val() == "") {
              alert("비밀번호를 입력해주세요");
              $("#pass").focus();
              return false;
           } else if ($("#cpass").val() == "") {
              alert("비밀번호 확인을 입력해주세요");
              $("#cpass").focus();
              return false;
           } else if ($("#phone").val() == "") {
              alert("핸드폰 번호를 입력해주세요");
              $("#phone").focus();
              return false;
           } else if ($("#cphone").val() == "") {
              alert("인증번호를 입력해주세요");
              $("#cphone").focus();
              return false;
           }
           joinForm.submit();
           
           //비밀번호 체크
           $("#cpass").focusout(
                 function() {
                    if ($("#pass").val() != ""
                          && $("#cpass").val() != "") {
                       if ($("#pass").val() != $("#cpass").val()) {
                          $("#check").text("비밀번호가 다릅니다. 다시 입력해주세요")
                                .css("display", "block").css(
                                      "color", "#f05228").css(
                                      "width", "100%").css(
                                      "text-align", "right");
                          $("#cpass").val("");
                          $("#cpass").focus();
                       } else {
                          $("#check").text("비밀번호가 동일합니다").css(
                                "display", "block").css("color",
                                "#818182").css("width", "100%")
                                .css("text-align", "right");
                       }
                    }
                 });
           
         //아이디 중복체크
           $("#btnId").click(function(){
              
              id = $("#id").val();
              
              if(id == 0){
                 alert("아이디를 입력해주세요");
                 $("#id").focus();
              }
              
              $.ajax({
                 url : 'http://localhost:9000/market/join_id_check.do',
                 /* 이거 바꿔야해 url 나중에~~~ */
                 
                 type:'POST',
                 data : 'id='+id,
                 dataType : "json",
                 success : function(idcheckData){
                    if(idcheckData=='0'){
                       $("#idcheck").text("사용가능한 아이디입니다.").css("display","block").css("color","#818182")
                       .css("text-align","right");
                    }else{
                       $("#idcheck").text("사용중인 아이디입니다. 다시 입력해주세요").css("display","block")
                       .css("color","#f05228").css("width","100%").css("text-align","right");
                       
                    }
                 }
                 
              });
           });
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
				<button type="button" id="btnLogin" class="mybtn form-control w-20">인증하기</button>
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
		<div class="form-group">
			<span class="float-left">차량번호</span><br>
			<div class="form-inline">
				<input type="number" name="" id="pass" class="form-control w-40 mr-2" placeholder="폰번">
				<button type="button" id="btnLogin" class="mybtn form-control no-ra">인증하기</button>
			</div>
		</div>
		<div class="form-group">
			<span class="float-left">면허증 코드</span><br>
			<div class="form-inline">
				<input type="number" name="" id="pass" class="form-control w-40 mr-2" placeholder="폰번">
				<button type="button" id="btnLogin" class="mybtn form-control no-ra">인증하기</button>
			</div>
		</div>
		<div class="form-group">
			<span class="float-left">버스운전 자격증</span><br>
			<div class="form-inline">
				<input type="number" name="" id="pass" class="form-control w-40 mr-2" placeholder="폰번">
				<button type="button" id="btnLogin" class="mybtn form-control no-ra">인증하기</button>
			</div>
		</div>
	</div>
</div>
