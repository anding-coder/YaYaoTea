<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>第一部分  了解黑茶</title>
     <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="resource/css/weui.min.css">
	<link rel="stylesheet" href="resource/css/jquery-weui.css">
	<style type="text/css">
	h1{
	text-align: center;
	}
	p{
	text-indent: 2em;
	}
	</style>
  </head>
  
  <body>
  <article class="weui_article">
    <h1>品茗指南</h1>
 
        <section>
            <h3>沏泡诀窍</h3>
            <p><img alt="icon" src="resource/img/green/green08.png" style="width: 88%"></p>
            <p>泡绿茶采用两种方法冲泡：一是上投法，它适用于外形紧结的高档名优绿茶，即先将摄氏75—85度的热水冲入杯中。二是下投法，先放茶叶后直接倒85度左右的热水，适合普通绿茶。</p>
            <p>正确的泡绿茶饮用，能使口感更好，而且喝起来更加健康。泡茶有一定的讲究，尤其是水温。</p>
            <p>一般的绿茶冲泡方法及注意事项：</p>
            <p>冲泡绿茶时，水温控制在80℃～90℃左右。若是冲泡绿茶粉，以40℃～60℃的温开水冲泡即可。份量是2公克绿茶粉配450毫升的白开水。</p>
            <p>一冲泡茶叶的第一泡不要喝，冲了热水后摇晃一下即可倒掉。</p>
            <p>绿茶粉不可泡得太浓，否则会影响胃液的分泌，空腹时最好不要喝。</p>
        </section>
        
</article>
	
	<script src="resource/js/jquery-2.1.4.js"></script>
	<script src="resource/js/jquery-weui.js"></script>
  </body>
</html>
