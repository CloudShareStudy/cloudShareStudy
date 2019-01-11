<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<script>
	var sideMenu = {
		click : function() {
			$(".deps").click(function() {
				var $this		= $(this);
					whatClass	= $(this).attr("id");
					
				//레프트 하이라이트
				sideMenu.active($this,whatClass);

				//active 메소드와 호출순서는 상관없음
				tabFn.tabCheckYn($this,whatClass);
			})
		},
		active : function($aTag,whatClass) {
			$aTag.closest("aside").find("dt").removeClass("select");
			
			if (whatClass === "two-deps") {
				$aTag.closest("dd").prev().addClass("select");

				$aTag.closest("aside").find("li").removeClass("on");
				$aTag.closest("li").addClass("on");
			} else {
				$aTag.parent().addClass("select");
			}
			
		}
	}

	$(function() {
		sideMenu.click();
	})
</script>
<!-- lnb -->
<aside class="lnb">
	<h3>교육</h3>
	<dl>
		<dt>
			<a id="one-deps" href="#" data-url="adminHome/home" data-code="home" class="ellipsis deps">home</a>
		</dt>
		<dt>
			<a id="one-deps" href="#" data-url="intro/adminIntro" data-code="introduction" class="ellipsis deps">자기소개서</a>
		</dt>
		<dt>
			<a id="one-deps" href="#" data-url="resume/adminResume" data-code="resume" class="ellipsis deps">이력서</a>
		</dt>
		<dt>
			<a id="one-deps" href="#" data-url="pofol/adminPofol" data-code="portfolio" class="ellipsis deps">포트폴리오</a>
		</dt>
		<dt>
			<a id="one-deps" href="#" data-url="training/adminTraining" data-code="training" class="ellipsis deps">트레이닝</a>
		</dt>
		<dt>
			<a id="one-deps" href="#" data-url="share/adminShare" data-code="share" class="ellipsis deps">면접질문공유</a>
		</dt>
		<dt class="sub-tit">
			<a href="#" class="ellipsis">초급반</a>
		</dt>
		<dd>
			<ul id="step2">
				<li>
					<a id="two-deps" href="#" data-url="step2/page11" data-code="page11" class="ellipsis deps">11기</a>
					<button type="button" class="btn-bookmark">
						<span class="blind">즐겨찾기</span>
					</button>
				</li>
				<li>
					<a id="two-deps" href="#" data-url="step2/page12" data-code="page12" class="ellipsis deps">12기</a>
					<button type="button" class="btn-bookmark">
						<span class="blind">즐겨찾기</span>
					</button>
				</li>
				<li>
					<a id="two-deps" href="#" data-url="step2/page13" data-code="page13" class="ellipsis deps">13기</a>
					<button type="button" class="btn-bookmark">
						<span class="blind">즐겨찾기</span>
					</button>
				</li>
			</ul>
		</dd>
	</dl>
	<div class="lnb-control">
		<button type="button" class="btn-lnb-hide">
			<span class="ico-arr-left-01"></span>
		</button>
	</div>
</aside>
<!--// lnb -->