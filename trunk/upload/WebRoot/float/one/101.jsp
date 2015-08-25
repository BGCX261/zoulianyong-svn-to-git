<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>JS弹出可拖拽可关闭的div层丨芯晴网页特效丨CsrCode.Cn</title>
<style>
html,body{height:100%;overflow:hidden;}
body,div,h2{margin:0;padding:0;}
body{font:12px/1.5 Tahoma;}
center{padding-top:10px;}
button{cursor:pointer;}
#overlay{position:absolute;top:0;left:0;width:100%;height:100%;background:#ffffff;opacity:0.5;filter:alpha(opacity=50);display:none;}
#win{position:absolute;top:50%;left:50%;width:400px;height:200px;background:#fff;border:4px solid #f90;margin:-102px 0 0 -202px;display:none;}
h2{font-size:12px;height:18px;text-align:right;background:#FC0;border-bottom:3px solid #f90;padding:5px;cursor:move;}
h2 span{color:#f90;cursor:pointer;background:#fff;border:1px solid #f90;padding:0 2px;}
</style>
<script>
window.onload = function ()
{
 var oWin = document.getElementById("win");
 var oLay = document.getElementById("overlay"); 
 var oBtn = document.getElementsByTagName("button")[0];
 var oClose = document.getElementById("close");
 var oH2 = oWin.getElementsByTagName("h2")[0];
 var bDrag = false;
 var disX = disY = 0;
 oBtn.onclick = function ()
 {
  oLay.style.display = "block";
  oWin.style.display = "block" 
 };
 oClose.onclick = function ()
 {
  oLay.style.display = "none";
  oWin.style.display = "none"
  
 };
 oClose.onmousedown = function (event)
 {
  (event || window.event).cancelBubble = true;
 };
 oH2.onmousedown = function (event)
 {  
  var event = event || window.event;
  bDrag = true;
  disX = event.clientX - oWin.offsetLeft;
  disY = event.clientY - oWin.offsetTop;  
  this.setCapture && this.setCapture();  
  return false
 };
 document.onmousemove = function (event)
 {
  if (!bDrag) return;
  var event = event || window.event;
  var iL = event.clientX - disX;
  var iT = event.clientY - disY;
  var maxL = document.documentElement.clientWidth - oWin.offsetWidth;
  var maxT = document.documentElement.clientHeight - oWin.offsetHeight;  
  iL = iL < 0 ? 0 : iL;
  iL = iL > maxL ? maxL : iL;   
  iT = iT < 0 ? 0 : iT;
  iT = iT > maxT ? maxT : iT;
  
  oWin.style.marginTop = oWin.style.marginLeft = 0;
  oWin.style.left = iL + "px";
  oWin.style.top = iT + "px";  
  return false
 };
 document.onmouseup = window.onblur = oH2.onlosecapture = function ()
 {
  bDrag = false;    
  oH2.releaseCapture && oH2.releaseCapture();
 };
};
</script>
</head>
	<body>
		<div id="overlay">&nbsp;</div>
		<div id="win">
			<h2>
				<span id="close">×</span>
			</h2>
		</div>
		<center>
			<button>弹出层</button>
		</center>
	</body>
</html>