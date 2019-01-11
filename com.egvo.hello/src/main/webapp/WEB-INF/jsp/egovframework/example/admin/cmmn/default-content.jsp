<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
var pageFn = {
      pageLoad : function($aTag) {
         $.ajax({
            url : $aTag.data("url")+".do", 
            type : 'post', 
            data : {"code" : $aTag.data("code")},   
            dataType : "html",   
            success : function(data) {
               var $showDiv = $("#"+$aTag.data("code"));
               $showDiv.parent().children("div").hide();
               $showDiv.html(data).show();
            },
            error : function() {
               
            }
         });   //ajax 종료
      }
}
</script>

<div style="position:relative;margin-top:20px;">
    <div class="page-nav-wrap" style="top: 10px;right: 0;">
        <span class="ico-home-01"></span>
        <span class="ico-arr-right-02"></span>
        <a href="#">교육</a>
        <span class="ico-arr-right-02"></span>
        <a href="#">취업반</a>
        <span class="ico-arr-right-02"></span>
        <a href="#">18기</a>
    </div>
</div>

<h2 class="tit">취업반 18기</h2>

<div id="tabCon" class="table-wrap type2 mgt-20">
   <!-- 본문내용 작성   -->
</div>
    