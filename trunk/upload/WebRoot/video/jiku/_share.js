function p2vSwfUrl(iStyle){iStyle=iStyle||1;return'http://www.89525.net/p'+(iStyle==1?'':iStyle)+'_'+id+'.swf';}
function updateUrls(iStyle){iStyle=iStyle||1;var swf=p2vSwfUrl(iStyle);var c1=document.getElementById('code1');var c2=document.getElementById('code2');var c3=document.getElementById('code3');var c4=document.getElementById('code4');var c5=document.getElementById('code5');c1.value=c1.value.substr(0,c1.value.indexOf('.html')+5)+(iStyle?'?pstyle='+iStyle:'');c2.value=swf;c3.value='<embed src="'+swf+'"  type="application/x-shockwave-flash" width="450" height="390"></embed>';c4.value='[flash]'+swf+'[/flash]';c5.value='[swf]'+swf+'[/swf]';document.getElementById('right').innerHTML=document.getElementById('right').innerHTML.replace(/pstyle=(\d)*/g,'pstyle='+iStyle);var o=document.getElementById('playUrl');o.url=iStyle<3?o.url.substr(0,o.url.indexOf('.html')+5):(/pstyle=(\d)*/.test(o.url)?o.url.replace(/pstyle=(\d)*/,'pstyle='+iStyle):o.url+'?pstyle='+iStyle);}
function playThis(iStyle){document.getElementById('playPre').innerHTML='<embed src="'+p2vSwfUrl(iStyle)+'"  type="application/x-shockwave-flash" width="200" height="150"></embed>';;}
function select(iStyle){var dd=document.getElementById('pm'+iStyle);if(dd.getElementsByTagName("input")[0].checked){return false;}
swichBtn('pm'+iStyle);updateUrls(iStyle);playThis(iStyle);}
copyErr=false;function fCopyToClicp(id,note){var val=document.getElementById(id).value;note=note||'��ʾ�������Ѿ����Ƶ���������!';if(!window.clipboardData){alert("��Ǹ��Ŀǰ�ù�����ֻ֧��IE�����");return false;}
var c=window.clipboardData.setData('text',val);if(note&&c){alert(note);}else{if(!copyErr){alert("���������������ȫ�������ò������ű�����\nϵͳ��������ʧ�ܣ����ֶ����ư� :(");copyErr=true;}}}