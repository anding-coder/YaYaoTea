<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>黑马黑茶</title>
     <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="resource/css/weui.min.css">
	<link rel="stylesheet" href="resource/css/jquery-weui.css">

  </head>
  
  <body>
  	
	<div class="weui_cells weui_cells_access">
  		<a class="weui_cell" href="javascript:;">
    <div class="weui_cell_bd weui_cell_primary">
      <h1>本真茶园优选黑茶</h1>
    </div>
    <div class="weui_cell_hd">
      <img src="resource/img/black/logo-black.jpg" alt="icon" style="width:100px;height:100px;margin:0 15px;display:block">
    </div>
  </a>
  		<a class="weui_cell" href="blacktea/BlackTea01">
    <div class="weui_cell_hd">
      <img src="resource/img/black/black01.png" alt="icon" style="width:50px;height:50px;margin:0 15px;display:block">
    </div>
    <div class="weui_cell_bd weui_cell_primary">
      <p>第一部分  了解黑茶</p>
    </div>
  </a>
  <a class="weui_cell" href="blacktea/BlackTea02">
    <div class="weui_cell_hd">
      <img src="resource/img/black/black02.png" alt="icon" style="width:50px;height:50px;margin:0 15px;display:block">
    </div>
    <div class="weui_cell_bd weui_cell_primary">
      <p>第二部分 黑茶文化长廊</p>
    </div>
  </a>
  <a class="weui_cell" href="blacktea/BlackTea03">
    <div class="weui_cell_hd">
      <img src="resource/img/black/black03.png" alt="icon" style="width:50px;height:50px;margin:0 15px;display:block">
    </div>
    <div class="weui_cell_bd weui_cell_primary">
      <p>第三部分  安化黑茶泡茶及饮用方法</p>
    </div>
  </a>
  <a class="weui_cell" href="blacktea/BlackTea04">
    <div class="weui_cell_hd">
      <img src="resource/img/black/black04.png" alt="icon" style="width:50px;height:50px;margin:0 15px;display:block">
    </div>
    <div class="weui_cell_bd weui_cell_primary">
      <p>第四部分  选购与储存</p>
    </div>
  </a>
</div>
<script src="resource/js/jquery-2.1.4.js"></script>
	<script src="resource/js/jquery-weui.js"></script>
  </body>
</html>
