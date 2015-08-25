<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>jQuery 模块拖动，拖动层效果</title>
<style type="text/css">
#div2
{
    position:absolute;
    width:400px;
    height:300px;
    border:1px solid #333333;
    background-color:#777788;
    text-align:center;
    line-height:400%;
    font-size:13px;
    left:80px;
    top:20px;
}
</style>
<script type="text/javascript" language="javascript" src="jquery-1.4.2.min.js"></script>
<script type="text/javascript" language="javascript">
var _move=false;//移动标记
var _x,_y;//鼠标离控件左上角的相对位置
$(document).ready(function(){
    $("#div2").click(function(){
        //alert("click");//点击（松开后触发）
        }).mousedown(function(e){
        _move=true;
        _x=e.pageX-parseInt($("#div2").css("left"));
        _y=e.pageY-parseInt($("#div2").css("top"));
        $("#div2").fadeTo(20, 0.25);//点击后开始拖动并透明显示
    });
    $(document).mousemove(function(e){
        if(_move){
            var x=e.pageX-_x;//移动时根据鼠标位置计算控件左上角的绝对位置
            var y=e.pageY-_y;
            $("#div2").css({top:y,left:x});//控件新位置
        }
    }).mouseup(function(){
    _move=false;
    $("#div2").fadeTo("fast", 1);//松开鼠标后停止移动并恢复成不透明
});
});
</script>
</head>
<body>
	<div>21312313211231</div>
	<div>
    	<div id="div2">支持拖拽</div>
    	<div>2313132132121afdafdasf</div>
		<div>21312313211231</div>
    </div>
	<div>afdsafdsafdsa</div>
</body>
</html>