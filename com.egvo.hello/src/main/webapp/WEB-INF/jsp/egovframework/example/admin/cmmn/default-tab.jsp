<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<script>
    var tabFn = {
       tabArr      : [],
       tabCheckYn : function($aTag,whatClass) {
          
         if ($.inArray($aTag.data("code"), tabFn.tabArr) > -1) {
             tabFn.tabToggle($aTag.data("code"),whatClass) 
         } else {
            
            if(tabFn.tabArr.length >= 5 ) {
               alert("5개이상 추가할 수없습니다");               
            }else {
                 tabFn.tabAdd($aTag,whatClass);
            }
         }
      },
      tabAdd : function($aTag,whatClass) {
          // 탭 과 컨텐츠 생성
           var tabLi   = document.createElement("li"),
                tabA   = document.createElement("a"),
                tabBtn   = document.createElement("button"),
                tabDiv   = document.createElement("div");
           
               tabA.setAttribute("href", "#"),
               tabA.setAttribute("class", whatClass),
               tabBtn.setAttribute("type", "button");
               
               tabA.textContent = $aTag.text();
               
               tabLi.setAttribute("data-tab", $aTag.data("code"));
               
               tabLi.appendChild(tabA);
               tabLi.appendChild(tabBtn);
               
               $("#tabList").append(tabLi);
               
               tabDiv.setAttribute("id", $aTag.data("code"));
               
               $("#tabCon").append(tabDiv);
             
               tabFn.tabArr.push($aTag.data("code"));
               tabFn.tabToggle($aTag.data("code"),whatClass);

               pageFn.pageLoad($aTag);
      },
      tabToggle : function(code,whatClass) {
         var $target = $("[data-tab="+code+"]");
         var $targetA = $("[data-code="+code+"]");
         
         var firstTitle	= $targetA.closest("dd").prev().children().text();
         	secondTitle	= $targetA.text();
        
		$target.closest("#tabList").children().removeClass("on");
            
		$target.addClass("on");
		
		$("#tabCon > div").hide();
		$("#"+code).show();
        
        if (whatClass === "two-deps") {
            
        	$(".page-nav-wrap").children("span").eq(2).show();
        	$(".page-nav-wrap").children("a").eq(1).show();
        	
            $(".page-nav-wrap").children("a").eq(1).text(firstTitle);//속도상 검색할수 있는 범위를 좁히면 좁힐수록 속도는 더 빨라짐
            $(".page-nav-wrap").children("a").eq(2).text(secondTitle);
            
            $(".tit").text(firstTitle + " " + secondTitle);
        } else {
        	
        	$(".page-nav-wrap").children("span").eq(2).hide();
        	
        	$(".page-nav-wrap").children("a").eq(2).text(secondTitle);
        	$(".page-nav-wrap").children("a").eq(1).hide();
        	
        	$(".tit").text(secondTitle);
        }
      },
      tabRemove : function() {
         var code		= $(this).parent().data("tab");
         
         //배열 삭제
         tabFn.tabArr.splice(tabFn.tabArr.indexOf("code"),1)
         
         //탭삭제
         $(this).parent().remove();
         //$("#"+code).remove();
         
         //하이라이트 이동
         if ($(this).parent().hasClass("on")) {
            var lastTab		= $("#tabList").children().last().data("tab");
            var lastLeft	= $("[data-code="+lastTab+"]");
            var aClass		= $("[data-tab="+lastTab+"]").children().attr("class");
            
           	tabFn.tabToggle(lastTab,aClass);
            sideMenu.active(lastLeft,aClass);
            
         }
      },
      tabEvent : function() {
         
         //탭 클릭시
         $("#tabList").on("click", "li a", function() {   //동적 생성도 가능
            var code = $(this).parent().data("tab");
            
            //레프트에 하이라이트 기능
            sideMenu.active($("dl").find("[data-code="+code+"]"));
            
            //sideMenu.active 메서드와 순서 상관없이 실행 된다, 탭에 하이라이트
            tabFn.tabToggle(code);
         })
         
         //탭 x버튼 클릭시
         $("#tabList").on("click", "button", tabFn.tabRemove);

      } 
   }
    $(function() {
      tabFn.tabEvent();
   })
</script>

<div class="tab tab_v1 tab_v2">
    <ul id="tabList">
       <!--  <li class="on"><a href="#">18기</a><button type="button"></button></li>
        <li><a href="#">17기</a><button type="button"></button></li> -->
    </ul>
</div>