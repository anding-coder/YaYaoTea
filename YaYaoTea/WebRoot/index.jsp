<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta content="width=device-width,initial-scale=1.0,maximum-scale=1,user-scalable=no" name="viewport" />	
	<meta name="pragma" content="no-cache">
	<meta name="cache-control" content="no-cache">
	<meta name="expires" content="0">    
	<meta name="keywords" content="雅耀,广告,代理,服务,茶叶,茶艺,保险">
	<meta name="description" content="雅耀（湖南）科技有限公司是一个线上线下结合形成一站式的综合性服务公司，业务涉及广泛，如广告，代理，茶叶，茶艺，保险，服务，活动等等">
	<link rel="stylesheet" href="resource/css/bootstrap.min.css">

  </head>
  
  <body>
<div class="panel panel-primary" style="padding:0 0px 200px 0;margin:0px auto;border:0px;">
   <div class="panel-heading" style="box-shadow:0px 0px 10px #666;">
      <h3 class="panel-title">
          <div class="h1 text-center">本真茶园后台管理系统<br/><small style="color:white;">Ben Zhen Tea Management System</small></div>
          <span style="color:red;" class="text-center"></span>
          <!-- <div class="text-right">管理员,,欢迎您！<div id="adminLogout" class="btn btn-default">退出</div></div> -->
        </h3>
   </div>
    
   <div class="panel-body">
    
       <div style="box-shadow:0px 0px 10px #999;" class=" col-md-12">
       <div style="overflow: auto;">
          <table class="table table-striped table-hover table-responsive text-center">
   <caption class="text-center">客户信息</caption>
   <thead>
      <tr>
         <th class="text-center">用户名</th>
         <th class="text-center">电话</th>
         <th class="text-center">Email</th>
         <th class="text-center">类别</th>
         <th class="text-center">收货地址</th>
         <th class="text-center">订单时间</th>
         <th class="text-center">操作</th>
      </tr>
   </thead>
   <tbody id="customerListTbody">
     
   </tbody>
</table>
       </div>
       <div class="btn btn-default pull-right" id="loadMore" >点击加载更多</div>
       </div>     
   </div>
   
   <!-- 模态框（删除Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
   aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" 
               data-dismiss="modal" aria-hidden="true">
                  &times;
            </button>
            <h4 class="modal-title" id="myModalLabel">
               修改发货状态
            </h4>
         </div>
         <div class="modal-body">
          
        
               <div class="form-group">
                   <label for="ht_adminType" class="col-sm-2 control-label">状态</label>
                   <div class="col-sm-4">
                   <select class="form-control" id="orderStatusSelect">
                     <option>新订单</option>
                     <option>已经发货</option>
                     <option>交易完成</option>
                   </select>
                   </div>
              </div>
          <div class="form-group text-center">
            <input type="button" class="btn btn-default" 
               data-dismiss="modal" id="shutStatus" value="关闭">
            
            <input type="button" id="submitbtn" class=" btn btn-primary" value="提交"/>
                                   
          </div>
          
         </div>
         
         
      </div><!-- /.modal-content -->
</div><!-- /.modal -->
</div>
   
   <div class="panel-footer"></div>
</div>
    <script src="resource/js/jquery-2.1.4.js"></script>
    <script src="resource/js/bootstrap3.2.0.js"></script>
        <script type="text/javascript">
        $(function(){
        	//初始化显示客户方法
        	function init(firstid,sizeid){
            $.ajax({
                 url:"http://nieyue.5166.info/YaYaoTea/showCustomer",
                 type:"POST",
                 data:{
                	 firstid:firstid,
                	 sizeid:sizeid
                 },
                // datatype:"jsonp",
                //jsonp:"callback",
                 success:function(data){
                	 if(data==''||data==undefined||data==null){
                		 $('#loadMore').removeClass('btn btn-default');
                		 $('#loadMore').text("没有更多了！");
                		 return;
                	 }
                	 for (var i = 0; i < data.length; i++) {
                		 if(data[i].orderStatus==0){
                			 data[i].orderStatus="新订单";
                		 }else if(data[i].orderStatus==1){
                			 data[i].orderStatus="已经发货";
                		 }else if(data[i].orderStatus==2){
                			 data[i].orderStatus="交易完成";
                		 }
                     //alert(data[i].userName);
                    $("#customerListTbody").append(
                    		"<tr id='"+data[i].id+"'><td>"+data[i].userName+"</td>"
                    		+"<td>"+data[i].cellPhone+"</td>"
                    	        +"<td>"+data[i].email+"</td>"
                    	         +"<td>"+data[i].teaType+"</td>"
                    	         +"<td>"+data[i].totaladdress+"</td>"
                    	         +"<td>"+data[i].referTime+"</td>"
                    	         +"<td><div class='updateCustomerIndex btn glyphicon glyphicon-pencil' data-toggle='modal' data-target='#myModal' >"
                    	          +data[i].orderStatus
                    	         +"</div>"
                    	         +"</td></tr>");
					}
                 }

             }); 
        	}
        	//显示10个客户
        	init(0,10);
        	//加载更多
        	$("#loadMore").click(function(){
        		var number=$("#customerListTbody tr").size();
        		init(number,10);
        	});
        	//全局获取更多的id
        	$(document).on("click",".updateCustomerIndex",function(){
        		var $this=$(this);
	        	var id=$(this).parent().parent().attr('id');
	        	 //alert(id);
	        	 //unbind解除click事件
	        	 $("#submitbtn").unbind("click").on("click",function(){
	         		var orderStatusSelect=$("#orderStatusSelect").val().trim();
	         		//alert(orderStatusSelect);
	         		 $.ajax({
	                     url:"http://nieyue.5166.info/YaYaoTea/updateCustomerIndex",
	                     type:"POST",
	                     data:{
	                    	id:id,
	                    	orderStatus:orderStatusSelect
	                     },
	                     success:function(data){
	                    	 $("#shutStatus").click();
	                    	$this.text(orderStatusSelect);
	                     }
	                     }); 
	         	});
	         });
        });
    </script>
  </body>
</html>
