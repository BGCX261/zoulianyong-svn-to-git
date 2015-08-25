/*
JavaScript Document
ckplayer5.2,有问题请访问http://www.ckplayer.com，感谢软件作者的辛勤劳动。
Fufu自用皮肤分享，品味经典 http://www.fufuok.com/。
免费软件，请保持本版权信息
*/
function ckstyle(){
	var ck=new Object();
	ck.mylogo='fufu/mylogo.png';//开始加载的logo,如果为空就不加载
	ck.logo='fufu/logo.png,3,65,26';//logo地址,对齐方式(0/1/2/3),x,y,如果不想显示地址设置成空
	ck.buffer='fufu/buffer.swf';//缓冲图标地址，推荐使用swf
	ck.play_g='fufu/play_out.png';//播放按钮普通状态图片
	ck.play_m='fufu/play_on.png';//播放按钮鼠标经过状态图片
	ck.pause_g='fufu/pause_out.png';//暂停按钮普通状态图片
	ck.pause_m='fufu/pause_on.png';//暂停按钮鼠标经过状态图片
	ck.pause_c='fufu/pause_scgedyke.png';//中间暂停按钮图片
	ck.sound_g='fufu/sound_out.png';//静音按钮普通状态图片
	ck.sound_m='fufu/sound_on.png';//静音按钮鼠标经过状态图片
	ck.mute_g='fufu/mute_out.png';//取消静音按钮普通状态图片
	ck.mute_m='fufu/mute_on.png';//取消静音按钮鼠标经过状态图片
	ck.full_g='fufu/full_out.png';//全屏按钮普通状态图片
	ck.full_m='fufu/full_on.png';//全屏按钮鼠标经过状态图片
	ck.general_g='fufu/general_out.png';//取消全屏按钮普通状态图片
	ck.general_m='fufu/general_on.png';//取消全屏按钮鼠标经过状态图片
	ck.volume_g='fufu/volume_back.png';//音量调节底部图片
	ck.volume_m='fufu/volume_on.png';//音量调节亮部图片
	ck.volume_s='fufu/schedule.png';//音量调节按钮图片
	ck.schedule_s='fufu/schedule.png';//进度调节按钮图片
	ck.bottom_g='fufu/buttom_bg.png';//底部背景图片
	ck.schedule_bg='fufu/schedule_bg.png';//加载进度背景图片
	ck.schedule_load='fufu/schedule_load.png';//加载进度背景图片
	ck.schedule_play='fufu/schedule_play.png';//加载进度背景图片
	ck.advmu='fufu/v_off.png';//前置广告静音按钮图片
	ck.advnomu='fufu/v_on.png';//前置广告取消静音按钮图片
	ck.advjump='fufu/adv_skip.png';//前置广告跳过广告图片
	ck.advmclose='fufu/close_adv.png';//关闭滚动广告的按钮
	ck.ctbar='26,0,0,26,0,1000';//底部控制栏的高，左边的距离，右边的距离，下边的距离,隐藏方式(0是不隐藏，1是全屏时隐藏，2是都隐藏),隐藏延迟时间
	ck.play_left=0;//播放/暂停按钮离左边的距离
	ck.clock='0x666666,70,40,4';//已播放时间/总时间的颜色,宽度,离左边的距离，离上边的距离
	ck.full_right=95;//全屏/取消全屏按钮离右边的距离,至少设置成按钮的宽度
	ck.vol='50,26,150,0,13,26';//音量调节框宽，高，离右边距离，上方距离，滑块的宽，高	
	ck.sound_right=185;//静音/取消静音离右边的距离
	ck.pgb='26,115,195,26,13,26';//进度框的高，离左边距离，离右边距离，离下面距离，滑块的宽，高
	ck.video_bottom=26;//视频区域底部离播放器底部的距离
	ck.re_buttom=26;//**底部距离参考值，该值很重要，用来计算如暂停广告，悬浮按钮等的坐标值，正常设置成控制栏或进度调节框离底部的距离
	ck.video_bo='100,1';//视频缓冲时间，是否采用图形优化
	ck.pa='0,80'//浮动暂停按钮是否固定，=0在有广告时左下角对齐，1表示固定中间,浮动暂停按钮的透明度
	ck.buffer_wh='30,30';//缓冲图标的宽,高
	ck.pr='0x000000,0xfdfdfd,0xffffff,4,30,80,18,5'//提示框背景颜色,边框颜色,文字的颜色,边框的弧度,提示框透明度，文字透明度,提示框的高度，离按钮的距离
	ck.advmaskap=10;//前置广告遮罩层的透明度
	ck.advstatus='1,3,88,30';//前置广告是否显示静音按钮(0/1),位置(0/1/2/3),x,y，如果经常播放图片或Flash广告，可以将静音的位置和下面的跳过广告对换一下。
	ck.advjp='1,0,3,88,58';//前置广告是否显示跳过广告按钮，跳过按钮触发对象(值0/1，0是直接跳转，1是触发js:function ckadjump(){})，对齐方式，x,y
	ck.advt='260,2,265,5';//倒计时文本宽，对齐方式，x,y
	ck.advmarquee='1,0x000000,20,5,20,46,3,50';//是否显示底部广告(0/1),背景颜色,高度,左边的距离,右边的距离,离下面的距离,滚动的距离(0静止),间隙时间(越小越快,建议不小于20),如果开启广告需要有function ckmarqueeadv(){return '广告内容'}
	ck.advms='1,3,15,42';//滚动广告是否显示关闭按钮(0/1),位置(0/1/2/3),x,y
	ck.statustrue=1;//是否跟踪状态-0是关闭，大于0是开启，1是调用普通状态，2增加调用视频信息，3增加调用视频播放过程状态，调用js类ckplayer_status(str),str的参数详细说明参考ckplayer.com
	ck.pr_play='点击播放';
	ck.pr_pause='点击暂停';
	ck.pr_mute='点击静音';
	ck.pr_nomute='取消静音';
	ck.pr_full='点击全屏';
	ck.pr_nofull='退出全屏';
	ck.pr_time='[$Time]';//[$Time]会自动替换目前进度提示
	ck.pr_volume='[$Volume]';//[$Volume]会自动替换音量
	ck.pr_adv='点击下方广告，了解更多信息，广告还剩：<font color="#dee309">[$Second]</font> 秒';//[$Second]会自动替换成时间
	ck.myweb='http://www.fufuok.com/flv-player-ckplayer.html,fufuok';
	return ck;
}
function swfplayer(){
	 this.ckplayer_url='player521.swf';
	 this.ckplayer_flv='';
	 this.ckplayer_volume=80;
	 this.ckplayer_play=1;
	 this.ckplayer_width=600;
	 this.ckplayer_height=476;
	 this.ckplayer_bgcolor='#000000';
	 this.ckplayer_allowFullScreen=true;
	 this.ckplayer_loadimg='';
	 this.ckplayer_pauseflash='';
	 this.ckplayer_pauseurl='';
	 this.ckplayer_loadadv='';
	 this.ckplayer_loadurl='';
	 this.ckplayer_loadtime=0;
	 this.ckplayer_endstatus=2;
	 this.swfwrite=function(str){
		var swfhtml='';
		swfhtml+='<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="'+this.ckplayer_width+'" height="'+this.ckplayer_height+'" id="ckplayer_'+str+'" align="middle">'
		swfhtml+='		<param name="movie" value="'+this.ckplayer_url+'" />'
		swfhtml+='		<param name="quality" value="high" />'
		swfhtml+='		<param name="bgcolor" value="'+this.ckplayer_bgcolor+'" />'
		swfhtml+='		<param name="wmode" value="transparent" />'
		swfhtml+='		<param name="allowScriptAccess" value="sameDomain" />'
		swfhtml+='      <param name="allowFullScreen" value="'+this.ckplayer_allowFullScreen+'" />';
		swfhtml+='		<param name="menu" value="false" />'
		swfhtml+='      <param name="Flashvars" value="fvolume='+this.ckplayer_volume+'&fplay='+this.ckplayer_play+'&flv='+this.ckplayer_flv+'&load_img='+this.ckplayer_loadimg+'&pause_adv='+this.ckplayer_pauseflash+'&pause_url='+this.ckplayer_pauseurl+'&load_adv='+this.ckplayer_loadadv+'&load_url='+this.ckplayer_loadurl+'&load_time='+this.ckplayer_loadtime+'&end_status='+this.ckplayer_endstatus+'" />';
		swfhtml+='      <embed src="'+this.ckplayer_url+'" flashvars="fvolume='+this.ckplayer_volume+'&fplay='+this.ckplayer_play+'&flv='+this.ckplayer_flv+'&load_img='+this.ckplayer_loadimg+'&pause_adv='+this.ckplayer_pauseflash+'&pause_url='+this.ckplayer_pauseurl+'&load_adv='+this.ckplayer_loadadv+'&load_url='+this.ckplayer_loadurl+'&load_time='+this.ckplayer_loadtime+'&end_status='+this.ckplayer_endstatus+'" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="'+this.ckplayer_width+'" height="'+this.ckplayer_height+'" allowFullScreen="'+this.ckplayer_allowFullScreen+'" menu="false"></embed>';
		swfhtml+='	</object>'
		document.getElementById(str).innerHTML=swfhtml;
	}
}
