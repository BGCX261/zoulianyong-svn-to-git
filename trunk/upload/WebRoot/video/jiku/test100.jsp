<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>极酷JcMiniFlvPlayer网页视频播放器(迷你版)黑色_极酷播放器官方网站</title>
		<meta name="keywords"
			content="JcMiniFlvPlayer,双击全屏,极酷JcMiniFlvPlayer网页视频播放器(迷你版)黑色" />
		<meta name="description"
			content="支持通过swfobject参数加载logo图标,加载Flv文件,图片文件,支持通过FlashVars加载logo图标,加载Flv文件,图片文件,特色,支持双击全屏功能，界面非常简洁精致,极酷JcMiniFlvPlayer网页视频播放器(迷你版)黑色网页视频播放器" />
		<link rel="shortcut icon" href="/favicon.ico">
		<link rel="stylesheet" type="text/css" href="common.css">
		<link rel="stylesheet" type="text/css" href="style.css">
		<script type="text/javascript" src="swfobject.js"></script>
	</head>
	<body class="playercontent">

		<div id="content">
			<div id="guide">
				·您当前的位置：
				<a href='http://www.89525.com/player'>主页</a> >
				<a href='/player/p/'>网页视频播放器</a> >
				<a href='/player/JcMiniFlvPlayer/'>极酷MiniFlvPlayer(迷你版)</a> >
			</div>
			<div class="title">
				<h2>
					极酷JcMiniFlvPlayer网页视频播放器(迷你版)黑色
				</h2>
			</div>
			<div class="info" style="padding: 0 110px;">
				<div id="ckepop" style="float: right; padding-right: 20px;">
					<a href="http://www.jiathis.com/share/"
						class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"
						style="color: #cccccc;">分享</a>
					<span class="jiathis_separator">|</span>
					<a class="jiathis_button_icons_1"></a>
					<a class="jiathis_button_icons_2"></a>
					<a class="jiathis_button_icons_3"></a>
					<a class="jiathis_button_icons_4"></a>
					<a class="jiathis_button_icons_5"></a>
				</div>
				<small>时间:</small>2011-06-15 13:22
				<small>来源:</small>89525.com 极酷网页播放器
				<script type="text/javascript"
					src="http://v1.jiathis.com/code/jia.js" charset="utf-8"></script>
			</div>

			<div class="intro">
				支持通过swfobject参数加载logo图标,加载Flv文件,图片文件,支持通过FlashVars加载logo图标,加载Flv文件,图片文件,特色,支持双击全屏功能，界面非常简洁精致
			</div>

			<div id="mainContent">
				<div id="JcMiniFlvPlayer1"
					style="border-right: #aaaaaa 1px solid; border-top: #aaaaaa 1px solid; margin: 0px auto; border-left: #aaaaaa 1px solid; width: 600px; border-bottom: #aaaaaa 1px solid">
					<strong>极酷JcMiniFlvPlayer网页视频播放器(迷你版)支持flv,mp4视频播放.</strong>
				</div>
				<h1 style="font-size: 14px; text-align: center">
					极酷JcMiniFlvPlayer网页视频播放器(迷你版)黑色
				</h1>
				<div id="JcMiniFlvPlayer2"
					style="border-right: #aaaaaa 1px solid; border-top: #aaaaaa 1px solid; margin: 0px auto; border-left: #aaaaaa 1px solid; width: 500px; border-bottom: #aaaaaa 1px solid">
					<strong>极酷JcMiniFlvPlayer网页视频播放器(迷你版)支持flv,mp4视频播放. Please
						update.</strong>
				</div>
				<h1 style="font-size: 14px; text-align: center">
					极酷JcMiniFlvPlayer网页视频播放器(迷你版)黑色
				</h1>
				<script type="text/javascript">
            var so = new SWFObject("JcMiniFlvPlayerBlack_S.swf", "previewswf", "600", "400", "7", "#000000");
            so.addParam("allowFullScreen", "true");
            so.addParam("scale", "noscale");
            so.addParam("menu", "false");
			
			so.addParam("flashvars", "videoURL=E:/FTP/Ftproot/musicOne.mp4&imageURL=flashChangfa2.jpg&showImage=true&playerWidth=600&playerHeight=375&autoPlay=false&autoRepeat=false&showControls=true&autoHideControls=true&autoHideTime=3&initialVolume=50&showLogo=false");
            so.write("JcMiniFlvPlayer1");
 			//http://vkpws.video.qq.com/flv/47/189/7EJ4HYU2V3r.flv
			var so2 = new SWFObject("JcMiniFlvPlayerBlack_S.swf", "previewswf", "500", "300", "7", "#000000");
            so2.addParam("allowFullScreen", "true");
            so2.addParam("scale", "noscale");
            so2.addParam("menu", "false");
			so2.addParam("flashvars", "videoURL=E:/FTP/Ftproot/musicOne.mp4&imageURL=flashChangfa2.jpg&showImage=true&playerWidth=500&playerHeight=275&autoPlay=false&autoRepeat=false&showControls=true&autoHideControls=true&autoHideTime=3&initialVolume=50&showLogo=false");
            so2.write("JcMiniFlvPlayer2");
        </script>
				<fieldset>
					<legend>
						<strong>功能介绍</strong>
					</legend>

				</fieldset>
				<fieldset>
					<legend>
						<strong>代码参考</strong>
					</legend>
					<p>
						&lt;script type=&quot;text/javascript&quot;&gt;
						<br />
						var so = new SWFObject(&quot;JcMiniFlvPlayerBlack_S.swf.swf&quot;,
						&quot;previewswf&quot;, &quot;600&quot;, &quot;400&quot;,
						&quot;7&quot;, &quot;#000000&quot;);
						<br />
						so.addParam(&quot;allowFullScreen&quot;, &quot;true&quot;);
						<br />
						so.addParam(&quot;scale&quot;, &quot;noscale&quot;);
						<br />
						so.addParam(&quot;menu&quot;, &quot;false&quot;);
						<br />
						so.addParam(&quot;flashvars&quot;,
						&quot;videoURL=http://vkpws.video.qq.com/flv/47/189/7EJ4HYU2V3r.flv&amp;imageURL=/player/JcMiniFlvPlayer/Images/flashChangfa2.jpg&amp;showImage=true&amp;playerWidth=600&amp;playerHeight=375&amp;autoPlay=false&amp;autoRepeat=false&amp;showControls=true&amp;autoHideControls=true&amp;autoHideTime=3&amp;initialVolume=50&amp;showLogo=false&quot;);
						<br />
						so.write(&quot;JcMiniFlvPlayer1&quot;);
						<br />
						&lt;/script&gt;
					</p>
				</fieldset>
			</div>
			<dl class="pshow">
				<dt>
					<a href="/Player/pic/JcMiniPlayerBlack.jpg" target="_blank"
						class="p180x120"><img src="/Player/pic/JcMiniPlayerBlack.jpg"
							alt="极酷JcMiniFlvPlayer网页视频播放器(迷你版)黑色图片" width="256" height="256"
							border="0" />
					</a>
				</dt>
				<dd>
					<a href="/Player/pic/JcMiniPlayerBlack.jpg" target="_blank">极酷JcMiniFlvPlayer网页视频播放器(迷你版)黑色图片</a>
				</dd>
			</dl>
			<div class="dede_pages">
				<ul class="pagelist">

				</ul>
			</div>
		</div>
		</div>
		<!--//MainEnd-->


		<div id="focusBn"
			style="text-align: center; width: 980px; margin: 0 auto; margin-top: 10px;">
			<a href="http://www.89525.net/Player/CuSunPlayer/" target="_blank"><img
					src="/Player/Images/CuSunB1.jpg"
					alt="极酷阳光播放器CusunPlayerV1,阳光网页视频播放器" />
			</a>
		</div>

		<div style="display: none;">
			<script language="JavaScript"
				src="http://s123.cnzz.com/stat.php?id=1371989&amp;web_id=1371989&amp;show=pic"
				type="text/javascript" charset="gb2312"></script>
			<script type="text/javascript"> 
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Ff145c2e94de5d2e8351901bffc620f15' type='text/javascript'%3E%3C/script%3E"));
</script>
		</div>

	</body>
</html>

