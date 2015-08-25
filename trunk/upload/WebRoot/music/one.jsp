<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK"/>
<meta name="robots" content="all" />
<meta name="author" content="Tencent. ISRD WEB Rebuilder."/>
<meta name="Copyright" content="Copyright (c) 2000-2009 Tencent."/>
<meta name="Description" content="SOSO音乐是腾讯公司推出在线音乐搜索服务，海量乐库在线试听、最流行新歌在线首发、手机铃声下载、超好用音乐管理，绿钻用户还可享受 高品质音乐试听、正版音乐下载、免费空间背景音乐设置、MV观看等特权，是互联网音乐播放和下载的首选" />
<meta name="Keywords" content="音乐,音乐下载,音乐播放器,音乐播放器下载,QQ音乐,QQmusic player,腾讯,tencent" />
<script type="text/javascript">var g_cssBegin=new Date()-0;</script>
<link href="http://cache.music.soso.com/sosocache/sosomusic_v1/css/player.css" type="text/css" rel="stylesheet">
<script type="text/javascript">var g_jsBegin=new Date()-0;</script>
<title>SOSO音乐 网页播放器</title>
<script language="javascript">
var yueFlag = 0;

</script>
<script src="http://cache.music.soso.com/sosocache/release/qmfl.js" charset="utf-8" type="text/javascript"></script>
<script type="text/javascript">var g_pageBegin=new Date()-0;</script>
<script language="javascript">
document.domain="soso.com";
window.name="_webSosoMusicPlayerFrame";
function urlParamGet(a_url, a_paraName) {
	var re = new RegExp("[\\?&]" + a_paraName + "=([^&]*)");
	if (re.test(a_url)) {
		return RegExp.$1;
	} else {
		return "";
	}
}

preUrl = document.referrer;
if(preUrl!="")
{
	Cookie.set("prePageDomain",preUrl.substring(0,preUrl.indexOf("/",7)));
}

var fromtoolbar = urlParamGet(window.location.href,"from");
if(fromtoolbar == "toolbar")
    fromtoolbar = "1";



var source = urlParamGet(window.location.href,"sourceFrom");
if (source=="")
{
	source = "0";
}

if(fromtoolbar == 1)
{
   source = "3";
   g_stat.sosoData(6, source);
}
else if(parseInt(source) != 0)
         g_stat.sosoData(6, source);

if(Browser.isSafari)
{
	var qzoneSource = 0;
	//if(qzoneSource == 12 && window.opener != null)
	  //window.opener.close();
    var songData = [];
	var yue_flag = 0;
	  
   if(qzoneSource == 10 || qzoneSource == 12 || yue_flag == 1)
   {  
	  var url = "";
	  var song = "";
	  var singer = "";
	  if(typeof(songData) != "undefined" && typeof(songData[0]) != "undefined")
	  {  
		  url = songData[0][2];
		  song = songData[0][3];
		  singer = songData[0][5];
	  }

	  window.location.replace("http://music.soso.com/index_m.html?url="+url+"&song="+escape(song)+"&singer="+escape(singer));
   }
   else if(qzoneSource == 0)
           window.location.replace("http://music.soso.com");
}
</script>
</head>
<body onload="if(fromtoolbar == 1) window.resizeTo(790,650); if(Browser.isSafari) window.resizeTo(window.screen.width,window.screen.height);if(/Chrome/.test(navigator.userAgent)) window.resizeTo(775,605);">
<iframe id="player" name="player" style="" width="750px;" height="540px;"  frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" allowtransparency="yes"></iframe>
<div  type="hidden"><form id="player1" name="player1" action="http://cgi.music.soso.com/fcgi-bin/fcg_music_play.q" target="player"  method="post">
					<input type="hidden" name="type" value="1" />
					<input type="hidden" name="songList" value='[]' />
					<input type="hidden" name="vip" value="-1" />

					<input type="hidden" name="vipLevel" value="-1" />
					<input type="hidden" name="userName" value="" />
					<input type="hidden" name="playXsosoFlag" value="0" />
					<input type="hidden" name="yueFlag" value="0" />
					<input type="hidden" name="source" value="0" />
					<input type="hidden" name="uin" value="" />
					<input type="hidden" name="key" value="" />
</form></div>
<script> {Element("player1").submit();} </script>

<script type="text/javascript">var g_watchStop=new Date()-0;</script>
</body>
</html>
<!--[if !IE]>|xGv00|c74d78e94ef7a6859edfafd13ea354bf<![endif]-->