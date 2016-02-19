<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>绿茶</title>
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
      <h1>本真茶园优选绿茶</h1>
    </div>
    <div class="weui_cell_hd">
      <img src="resource/img/green/logo-green.png" alt="icon" style="width:100px;height:100px;margin:0 15px;display:block">
    </div>
  </a>
  		<a class="weui_cell" href="greentea/GreenTea01">
    <div class="weui_cell_hd">
      <img src="resource/img/green/green01.png" alt="icon" style="width:50px;height:50px;margin:0 15px;display:block">
    </div>
    <div class="weui_cell_bd weui_cell_primary">
      <p>认识一下绿茶</p>
    </div>
  </a>
  <a class="weui_cell" href="greentea/GreenTea02">
    <div class="weui_cell_hd">
      <img src="resource/img/green/green03.png" alt="icon" style="width:50px;height:50px;margin:0 15px;display:block">
    </div>
    <div class="weui_cell_bd weui_cell_primary">
      <p>历史沿革</p>
    </div>
  </a>
  <a class="weui_cell" href="greentea/GreenTea03">
    <div class="weui_cell_hd">
      <img src="resource/img/green/green05.png" alt="icon" style="width:50px;height:50px;margin:0 15px;display:block">
    </div>
    <div class="weui_cell_bd weui_cell_primary">
      <p>制作工艺</p>
    </div>
  </a>
  <a class="weui_cell" href="greentea/GreenTea04">
    <div class="weui_cell_hd">
      <img src="resource/img/green/green08.png" alt="icon" style="width:50px;height:50px;margin:0 15px;display:block">
    </div>
    <div class="weui_cell_bd weui_cell_primary">
      <p>品茗指南</p>
    </div>
  </a>
  <a class="weui_cell" href="greentea/GreenTea05">
    <div class="weui_cell_hd">
      <img src="resource/img/green/green09.png" alt="icon" style="width:50px;height:50px;margin:0 15px;display:block">
    </div>
    <div class="weui_cell_bd weui_cell_primary">
      <p>品饮介绍</p>
    </div>
  </a>
  <a class="weui_cell" href="greentea/GreenTea06">
    <div class="weui_cell_hd">
      <img src="resource/img/green/green12.png" alt="icon" style="width:50px;height:50px;margin:0 15px;display:block">
    </div>
    <div class="weui_cell_bd weui_cell_primary">
      <p>品质鉴别</p>
    </div>
  </a>
  <a class="weui_cell" href="greentea/GreenTea07">
    <div class="weui_cell_hd">
      <img src="resource/img/green/green14.png" alt="icon" style="width:50px;height:50px;margin:0 15px;display:block">
    </div>
    <div class="weui_cell_bd weui_cell_primary">
      <p>贮存方法</p>
    </div>
  </a>
</div>
<script src="resource/js/jquery-2.1.4.js"></script>
	<script src="resource/js/jquery-weui.js"></script>
  </body>
</html>
