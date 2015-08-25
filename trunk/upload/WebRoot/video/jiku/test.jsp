<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>极酷SevenColorPlayer网页播放器(炫彩广告版)</title>
		<meta name="keywords"
			content="带广告的flash网页播放器,带视频广告播放器,广告播放器,支持视频广告,支持暂停广告" />
		<meta name="description"
			content="这是一款强憾的播放器,支持视频广告,支持暂停广告,同时也支持文字广告网页播放器" />
		<script type="text/javascript" src="swfobject.js"></script>
		<script src="_share.js"></script>
		<style type="text/css">
<!--
body {
	margin: 0;
	padding: 0;
	font-size: 12px;
	color: #313131;
	text-align: left;
	font-family: "宋体", Verdana, Arial, Helvetica, sans-serif;
	line-height: 24px;
}

.btn {
	background: #d4d0c8;
	border: 0;
	padding-top: 2px;
	border-left: 1px solid #fff;
	border-right: 1px solid #404040;
	border-top: 1px solid #fff;
	border-bottom: 1px solid #404040;
}

.input {
	border: 1px solid #d4d0c8;
	background: #fff
}

.cGrayover,a.cGrayover:link,a.cGrayover:visited {
	color: #cccccc;
	text-decoration: line-through;
}

.cWhite2,a.cWhite2:link,a.cWhite2:visited {
	color: #fff100;
}

.cGold2,a.Gold2:link,a.Gold2:visited {
	color: gold;
	font-weight: bold;
}

.cOrange,a.cOrange:link,a.cOrange:visited {
	color: orangered;
}

.cOrange2,a.cOrange2:link,a.cOrange2:visited {
	color: #9b2f07;
}

.cGray,a.cGray:link,a.cGray:visited {
	color: #6D6359;
}
-->
</style>
	</head>

	<body>
		<div
			style="width: 470px; background-color: #eaeaea; border: 1px solid #d2d2d2; padding: 5px; margin: 0 auto; margin-top: 20px;">
			<div id='jcflvplayert2'>
				<b>极酷JcFlvPlayerT1网页视频播放器</b>:
				<br />
				<a href="http://www.89525.net/FlvPlayer/" target="_blank">http://www.89525.net/FlvPlayer/</a>
			</div>
		</div>

		<div
			style="width: 470px; background-color: #eaeaea; border-left: 1px solid #d2d2d2; border-right: 1px solid #d2d2d2; border-bottom: 1px solid #d2d2d2; padding: 5px; margin: 0 auto; margin-top: 0px;">
			<table width="100%" border="0" align="center" cellpadding="0"
				cellspacing="0">
				<tr>
					<td height="25" align="left"
						style="border-bottom: 1px solid #d2d2d2;">
						<span class="cGray" style="padding-left: 15px;">* 以上 [播放模式]
							设置如下：</span>
					</td>
				</tr>
				<tr>
					<td height="25" align="center">
						<span>前置Flash广告</span> +
						<span>视频广告</span> +
						<span>滚动广告</span> +
						<span>暂停广告</span>
						<br />
						+
						<span>自动播放</span> +
						<span>循环播放</span> +
						<span>显示Logo</span> +
						<span>显示控制条</span> +
						<span>5秒到计时</span>
					</td>
				</tr>
			</table>
		</div>
		<div style="display: none;">
			<script language="JavaScript"
				src="http://s123.cnzz.com/stat.php?id=1371989&amp;web_id=1371989&amp;show=pic"
				type="text/javascript" charset="gb2312"></script>
		</div>
	</body>
</html>
<script type="text/javascript"> 
var so2 = new SWFObject('SenvenColorPlayerV21_NS.swf?FlvID=870','ply','470','300','9','#000000');
so2.addParam('allowfullscreen','true');
so2.addParam('allowscriptaccess','always');
so2.addParam('wmode','opaque');
so2.addParam('quality','high');
so2.addParam('salign','lt');
so2.addVariable("showJcScpCountDowns","yes");
so2.addVariable("JcScpCountDowns","5");
so2.addVariable("JcScpCountDownsPx","340");
so2.addVariable("JcScpCountDownsPy","10");
so2.addVariable("JcScpaFront","SevenColorPlayer_500x418.swf");
so2.addVariable("JcScpMoveinfo","/SevenColorPlayer/ScpMoveinfoV20Demo.asp");
so2.addVariable("JcScpfile","/SevenColorPlayer/ScpFileV20Demo.asp");
so2.write('jcflvplayert2');
</script>
