<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="keywords" />
<meta name="description" />
<title>错误提示</title>
<!–[if lte IE]>
<![endif]–>
<%@include file="/page/inc/headScript.jsp"%>
<link rel="Stylesheet" href="statics/css/GatewayExceptionError.css" />

<script type="text/javascript">
	function countDown(secs, surl) {
		//alert(surl);     
		var jumpTo = document.getElementById('jumpTo');
		jumpTo.innerHTML = secs;
		if (--secs > 0) {
			setTimeout("countDown(" + secs + ",'" + surl + "')", 1000);
		} else {
			location.href = surl;
		}
	}
</script>

</head>
<body>
	<%@include file="/page/inc/head_msg.jsp"%>
	<div class="PayState">
		<div class="tipsTitle">
			<ul>
				<li class="TipsImg errorTipsImg"></li>
				<li class="tipTxt markRed">支付没有成功！</li>
				<li class="linkTitle" id="backMerchant"><span id="jumpTo">15</span>秒自动跳转返回<a href="${backToMerchantUrl}">商户页面</a> 
				<script type="text/javascript">countDown(15, '${backToMerchantUrl}');</script>
				</li>
			</ul>
		</div>

		<div class="tip">

			<div class="title">
				<img src="<statics/images/tips.png" /> 温馨提示：
			</div>
			<ul>
				<li>请确认您的银行卡开通了网上银行功能</li>
				<li>如果您的银行卡没有扣款，支付没有成功，可以返回重新选择支付方式</li>
				<li>如果您的银行卡已经扣款，但是支付没有成功，可能是由于网络传输问题造成，请不要担心，我们会尽快处理。</li>
				<li>如有其他问题请联系客服</li>
				<li>客服电话：${COMPANY_TEL}</li>
			</ul>
			<br style="clear: both" />
		</div>
	</div>

	<div class="ht1"></div>

	<jsp:include page="/page/inc/foot.jsp" />
</body>
</html>
