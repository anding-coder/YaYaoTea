<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>测试</title>
   <meta content="width=device-width,initial-scale=1.0,maximum-scale=1,user-scalable=no" name="viewport" />	
	<meta name="pragma" content="no-cache">
	<meta name="cache-control" content="no-cache">
	<meta name="expires" content="0">    
	<meta name="keywords" content="雅耀,广告,代理,服务,茶叶,茶艺,保险">
	<meta name="description" content="雅耀（湖南）科技有限公司是一个线上线下结合形成一站式的综合性服务公司，业务涉及广泛，如广告，代理，茶叶，茶艺，保险，服务，活动等等">
<style type="text/css">
	html,body{
	margin: 0;
	padding:0;
	}
	</style>
  </head>
  
  <body >
 <button id="fenxiang" >分享</button>
 
 <button id="fenxiang" >分享</button>
<script src="resource/js/jQuery1.11.3.js"></script>
<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script>
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
      desc: '快来免费领取黑茶！',
     link: location.href.split('#')[0],
     // link: 'http://nieyue.6655.la/YaYaoTea/spreadBlackTea1',
      imgUrl: '<%=basePath%>resource/img/spread/1.jpg',
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
<!-- 代码统计 -->
<!-- <script src="http://s95.cnzz.com/z_stat.php?id=1257651476&web_id=1257651476" language="JavaScript"></script> 
 --> </body>
</html>
