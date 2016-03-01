//var url2=encodeURIComponent(url1);
$.ajax({
	url:"token/connection?url="+location.href.split('#')[0],
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
 /*  wx.checkJsApi({
    jsApiList: [
'onMenuShareAppMessage'
    ],
    success: function (res) {
      //alert(JSON.stringify(res));
      alert("sdf");
    }
  });  */