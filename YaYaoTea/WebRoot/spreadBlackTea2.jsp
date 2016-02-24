<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>春季好茶</title>
   <meta content="width=device-width,initial-scale=1.0,maximum-scale=1,user-scalable=no" name="viewport" />	
	<meta name="pragma" content="no-cache">
	<meta name="cache-control" content="no-cache">
	<meta name="expires" content="0">    
	<meta name="keywords" content="雅耀,广告,代理,服务,茶叶,茶艺,保险">
	<meta name="description" content="雅耀（湖南）科技有限公司是一个线上线下结合形成一站式的综合性服务公司，业务涉及广泛，如广告，代理，茶叶，茶艺，保险，服务，活动等等">
	<link rel="stylesheet" href="resource/css/weui.min.css">
	<link rel="stylesheet" href="resource/css/jquery-weui.css">

  </head>
  
  <body >
  <div>
  <img  name="lazy"  data-original="resource/img/blackTea1.jpg" style="width:100%;display: block;"/>
  </div>
  <div>
  <img  name="lazy"  data-original="resource/img/blackTea2.jpg" style="width:100%;display:block;"/>
  <a href="https://open.weixin.qq.com/connect/oauth2/authorize?appid=wx6a3d881182f88c74&redirect_uri=http%3A%2F%2Fweidian.com%2Fp5%2Fshop%2Fpages%2Fitem-new.php%3FitemID%3D1739997399%26p%3D-1&response_type=code&scope=snsapi_base&state=H5WXshare&from=singlemessage&isappinstalled=0#wechat_redirect"><img  name="lazy"  data-original="resource/img/blackTea2btn.png" style="width:30%; margin:-15% 35% 3%;display:block;">
  </a>
  </div>
  <div>
  <img  name="lazy"  data-original="resource/img/blackTea3.jpg" style="width:100%;display:block;"/>
  <img  name="lazy"  data-original="resource/img/teacode.jpg" style="width:30%;margin:-45% 35%;display:block;">
  </div>
<script src="resource/js/jquery-2.1.4.js"></script>
	<script src="resource/js/jquery-weui.js"></script>
	<script src="resource/js/jquery.lazyload.js"></script>
	<script type="text/javascript">
	$(function()  
		    {   
		        $("img[name='lazy']").lazyload({   
		           placeholder:'resource/img/lazyload.jpg',
		            threshold : 200,
		           // event:'abv',
		            effect : "fadeIn"   
		        });   
		    });  
		    $(window).bind("load", function() { 
		    var timeout = setTimeout(function() {$("img[name='lazy']").trigger("abv")}, 1000);
		    }); 
	</script>
  </body>
</html>
