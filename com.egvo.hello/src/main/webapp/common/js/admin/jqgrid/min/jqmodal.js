(function(c){"function"===typeof define&&define.amd?define(["jquery"],c):"object"===typeof module&&module.exports?module.exports=function(k,g){k||(k=window);void 0===g&&(g="undefined"!==typeof window?require("jquery"):require("jquery")(k));c(g);return g}:c(jQuery)})(function(c){var k=0,g,l=[],n=function(a){try{c(":input:visible",a.w).first().focus()}catch(h){}},r=function(a){var h=g[l[l.length-1]],b=!c(a.target).parents(".jqmID"+h.s)[0],d=c(a.target).offset(),f=void 0!==a.pageX?a.pageX:d.left,e=void 0!==
a.pageY?a.pageY:d.top,d=function(){var a=!1;c(".jqmID"+h.s).each(function(){var b=c(this),d=b.offset();if(d.top<=e&&e<=d.top+b.height()&&d.left<=f&&f<=d.left+b.width())return a=!0,!1});return a};if("mousedown"!==a.type&&d())return!0;"mousedown"===a.type&&b&&(d()&&(b=!1),b&&!c(a.target).is(":input")&&n(h));return!b},p=function(a){c(document)[a]("keypress keydown mousedown",r)},q=function(a,h,b){return a.each(function(){var a=this._jqm;c(h).each(function(){this[b]||(this[b]=[],c(this).click(function(){var a,
b,c,d=["jqmShow","jqmHide"];for(a=0;a<d.length;a++)for(c in b=d[a],this[b])if(this[b].hasOwnProperty(c)&&g[this[b][c]])g[this[b][c]].w[b](this);return!1}));this[b].push(a)})})};c.fn.jqm=function(a){var h={overlay:50,closeoverlay:!1,overlayClass:"jqmOverlay",closeClass:"jqmClose",trigger:".jqModal",ajax:!1,ajaxText:"",target:!1,modal:!1,toTop:!1,onShow:!1,onHide:!1,onLoad:!1};return this.each(function(){if(this._jqm)return g[this._jqm].c=c.extend({},g[this._jqm].c,a),g[this._jqm].c;k++;this._jqm=k;
g[k]={c:c.extend(h,c.jqm.params,a),a:!1,w:c(this).addClass("jqmID"+k),s:k};h.trigger&&c(this).jqmAddTrigger(h.trigger)})};c.fn.jqmAddClose=function(a){return q(this,a,"jqmHide")};c.fn.jqmAddTrigger=function(a){return q(this,a,"jqmShow")};c.fn.jqmShow=function(a){return this.each(function(){c.jqm.open(this._jqm,a)})};c.fn.jqmHide=function(a){return this.each(function(){c.jqm.close(this._jqm,a)})};c.jqm={hash:{},open:function(a,h){var b=g[a],d,f,e=b.c;d=b.w.parent().offset();var k,m="."+e.closeClass;
f=parseInt(b.w.css("z-index"),10);f=0<f?f:3E3;d=c("<div></div>").css({height:"100%",width:"100%",position:"fixed",left:0,top:0,"z-index":f-1,opacity:e.overlay/100});if(b.a)return!1;b.t=h;b.a=!0;b.w.css("z-index",f);c(b.w[0].ownerDocument).data("ui-dialog-overlays")&&b.w.addClass("ui-dialog");e.modal?(l[0]||setTimeout(function(){p("bind")},1),l.push(a)):0<e.overlay?e.closeoverlay&&b.w.jqmAddClose(d):d=!1;b.o=d?d.addClass(e.overlayClass).prependTo("body"):!1;e.ajax?(d=e.target||b.w,f=e.ajax,d="string"===
typeof d?c(d,b.w):c(d),f="@"===f.substr(0,1)?c(h).attr(f.substring(1)):f,d.html(e.ajaxText).load(f,function(){e.onLoad&&e.onLoad.call(this,b);m&&b.w.jqmAddClose(c(m,b.w));n(b)})):m&&b.w.jqmAddClose(c(m,b.w));e.toTop&&b.o&&(d=b.w.parent().offset(),f=parseFloat(b.w.css("left")||0),k=parseFloat(b.w.css("top")||0),b.w.before('<span id="jqmP'+b.w[0]._jqm+'"></span>').insertAfter(b.o),b.w.css({top:d.top+k,left:d.left+f}));if(e.onShow)e.onShow(b);else b.w.show();n(b);return!1},close:function(a){a=g[a];if(!a.a)return!1;
a.a=!1;l[0]&&(l.pop(),l[0]||p("unbind"));a.c.toTop&&a.o&&c("#jqmP"+a.w[0]._jqm).after(a.w).remove();if(a.c.onHide)a.c.onHide(a);else a.w.hide(),a.o&&a.o.remove();return!1},params:{}};g=c.jqm.hash});
//# sourceMappingURL=jqmodal.map
