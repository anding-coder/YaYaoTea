<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>免费领茶</title>
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
	<img alt="" src="resource/img/freeTaste.jpg" style="position: fixed;width: 100%;">
  <div style="opacity:0.5;text-align:center;">
  <h1 style="color:red;">喝好茶，上本真茶园！</h1>
  <div style="color:red;">免费领取好茶，只为你的爱茶之心！</div>
  <div style="color:black;">新店开张，体验新茶，免费领取100克茶叶只需邮费25元。
          新店开张，体验黑茶的魅力，免费领取黑茶100克。
          新店开张，体验最新花茶，体现女性魅力，免费领取花茶100克装。</div>
  </div>
   <div class="weui_cells weui_cells_form"  style="opacity:0.7; height: 100%;" >
  	
  <div class="weui_cell">
    <div class="weui_cell_hd"><label class="weui_label">姓名</label></div>
    <div class="weui_cell_bd weui_cell_primary">
      <input class="weui_input" id="username" type="text" placeholder="请输入姓名">
    </div>
  </div>
  <div class="weui_cell">
    <div class="weui_cell_hd"><label class="weui_label">手机</label></div>
    <div class="weui_cell_bd weui_cell_primary">
      <input class="weui_input" id="cellphone" type="tel" placeholder="请输入手机号码">
    </div>
  </div>
  <div class="weui_cell">
    <div class="weui_cell_hd"><label class="weui_label">邮箱</label></div>
    <div class="weui_cell_bd weui_cell_primary">
      <input class="weui_input" id="email" type="text" placeholder="请输入电子邮箱">
    </div>
  </div>
  
  <div class="weui_cell weui_cell_select">
    <div class="weui_cell_bd weui_cell_primary">
      <select class="weui_select" name="select1" id="teaCategory">
        <option selected="">选择茶类</option>
        <option >黑马黑茶</option>
        <option >绿茶</option>
      </select>
    </div>
  </div>
  
  <div class="weui_cell">
	<label >收货地址</label>
		<select id="sheng" name="province">
		 <!-- <option >广东</option> -->
		</select>省
		<select id="shi" name="city">
		 <!-- <option >广州</option> --> 
		</select>市
		<select id="xian" name="country">
			<!-- <option >天河</option> -->
		</select>县
		<select id="xiang" name="street" >
								
			<!--  <option >--</option> -->
								
		</select>
		

  </div>
   <div class="weui_cell">
   <div class="weui_cell_bd weui_cell_primary">
		<input type="text" class="weui_input" id="address" name="address" placeholder="请输入详细地址"/>
   </div>
   </div>
   
   <div class="weui_cell">
    <div class="weui_cell_bd weui_cell_primary">
      <a href="javascript:;" class="weui_btn weui_btn_primary" id="refer">提交</a>
    </div>
  </div>
   
</div>
    
    <script src="resource/js/jQuery1.11.3.js"></script>
	<script src="resource/js/jquery-weui.js"></script>
	<script src="resource/js/GlobalProvinces_extend.js" ></script>
    <script src="resource/js/GlobalProvinces_main.js" ></script>
    <script src="resource/js/initLocation.js" ></script>
    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script>
//var url2=encodeURIComponent(url1);
//var sss=location.href.split('#')[0];
//alert(sss);
$.ajax({
	url:"token/connection?url="+encodeURIComponent(location.href.split('#')[0]),
	type:"GET",
	success:function(data){
	//alert(data);
	//alert( $.parseJSON(data).timestamp);
	var appid=$.parseJSON(data).appid;
	var timestamp=$.parseJSON(data).timestamp;
	var nonceStr=$.parseJSON(data).noncestr;
	var signature=$.parseJSON(data).signature;
	//alert(appid+timestamp+nonceStr+signature)
	//alert(signature);
  wx.config({
    debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
    appId: appid, // 必填，公众号的唯一标识
    timestamp: timestamp, // 必填，生成签名的时间戳
    nonceStr: nonceStr, // 必填，生成签名的随机串
    signature: signature,// 必填，签名，见附录1
    jsApiList: [
                'checkJsApi',
                'onMenuShareTimeline',
                'onMenuShareAppMessage',
                'onMenuShareQQ',
                'onMenuShareWeibo',
                'onMenuShareQZone',
                'hideMenuItems',
                'showMenuItems',
                'hideAllNonBaseMenuItem',
                'showAllNonBaseMenuItem',
                'translateVoice',
                'startRecord',
                'stopRecord',
                'onVoiceRecordEnd',
                'playVoice',
                'onVoicePlayEnd',
                'pauseVoice',
                'stopVoice',
                'uploadVoice',
                'downloadVoice',
                'chooseImage',
                'previewImage',
                'uploadImage',
                'downloadImage',
                'getNetworkType',
                'openLocation',
                'getLocation',
                'hideOptionMenu',
                'showOptionMenu',
                'closeWindow',
                'scanQRCode',
                'chooseWXPay',
                'openProductSpecificView',
                'addCard',
                'chooseCard',
                'openCard'
              ] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
});  
}});
  /* wx.checkJsApi({
    jsApiList: [
'chooseImage'
    ],
    success: function (res) {
      //alert(JSON.stringify(res));
      alert("sdf");
    }
  });  */
  
  wx.ready(function(){
    wx.onMenuShareAppMessage({
      title: '本真茶园',
      desc: '免费喝茶，黑茶、绿茶，随你挑选！',
     link: location.href.split('#')[0],
     // link: 'http://nieyue.6655.la/YaYaoTea/spreadBlackTea1',
      imgUrl: '<%=basePath%>resource/img/freeTaste.jpg',
      trigger: function (res) {
        // 不要尝试在trigger中使用ajax异步请求修改本次分享的内容，因为客户端分享操作是一个同步操作，这时候使用ajax的回包会还没有返回
       // alert('用户点击发送给朋友');
      },
      success: function (res) {
        //alert('已分享');
      },
      cancel: function (res) {
        //alert('已取消');
      },
      fail: function (res) {
        alert(JSON.stringify(res));
      }
    });
    
	});
</script>
	<script type="text/javascript">
	$(function(){
		initLocation(
				{sheng_val:"湖南",shi_val:"长沙",
				xian_val:"长沙市"});
		
		$("#teaCategory").on("change",function(){
			if($(this).val()=="选择茶类"){
				$.alert("请选择一种茶！");
			}
		});
		
		$("#refer").click(function(){
			var username=$("#username").val().trim();
			var cellphone=$("#cellphone").val().trim();
			var email=$("#email").val().trim();
			var teaCategory=$("#teaCategory").val().trim();
			var totaladdress=""+$("#sheng").val().trim()+$("#shi").val().trim()+$("#xian").val().trim()+$("#xiang").val().trim()+$("#address").val().trim();
			var referTime=new Date();
			if(teaCategory=="选择茶类"){
				return $.alert("请选择一种茶！");
			}
			//alert(username+cellphone+email+teaCategory+totaladdress);
		$.ajax({
				url:"addCustomerContent",
				type:'POST',
				data:{
				userName:username,
				cellPhone:cellphone,
				email:email,
				teaType:teaCategory,
				totaladdress:totaladdress
				},
				success:function(data){
					if(data==null||data==''){
						return $.alert("输入错误，请重新输入");
					}
				$.toast("提交成功");
					$("body").html();
					$("body").html("<div class='weui_msg'>"
							  +"<div class='weui_icon_area'><i class='weui_icon_success weui_icon_msg'></i></div>"
							  +"<div class='weui_text_area'>"
							   +"<h2 class='weui_msg_title'>操作成功</h2>"
							    +"<p class='weui_msg_desc'>尊敬的<span style='color:red;'>"+data.userName+"</span>，您的信息已经提交，请您耐心等待收货！</p></div>时间："+data.referTime+"</div>");
				},
				error:function(){
				$.alert("提交失败，请重新提交");
				}
		});
		
		}); 
		/* // 使用 jQuery异步提交表单

		$('#editRealMsgForm').submit(function() {
		jQuery.ajax({
		url:'editRealMsg.eri',
		data:$('#editRealMsgForm').serialize(),
		type:"POST",
		beforeSend:function()
		{  
		$('#submitButton').hide();
		$('#editRealMsgImg').show();
		},
		success:function()
		{
		$('#editRealMsgImg').hide();
		$('#modifyButton').show();
		$('#realName').attr("disabled","true");
		$('#tel').attr("disabled","true");
		}
		});
		return false;
		}); */
	});
	</script>
  </body>
</html>
