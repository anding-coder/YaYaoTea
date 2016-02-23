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
