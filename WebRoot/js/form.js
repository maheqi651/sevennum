

function format(time)
{ 
	var len=time.toString().length; 
	if(len==1)
		time="0"+time; 
	return time; 
} 

function playwnd(lay,player) 
{
	this.lay=lay;
	this.player=player;
	this.moveto=function(top,left,width,height)
	{
		//alert("playwnd.moveto");
		this.lay.style.top=top;
		this.lay.style.left=left;
		this.lay.style.width=width;
		this.lay.style.height=height;
		if(this.player!=null)
		{
			this.player.width=width;
			this.player.height=height;
		}
	};
	this.hidewnd=function()
	{
		this.lay.style.visibility="hidden";
	};
}
function backwnd(type,backlay,backimg,play,chbutton,caplabel)
{
	this.type=type;	//cif,qicf;
	this.backlay=backlay;
	this.backimg=backimg;
	this.play=play;
	this.chbutton=chbutton;
	this.caplabel=caplabel;
	this.moveto=function(top,left,width,height)
	{
		//alert("backwnd.moveto");
		this.backlay.style.top=top;
		this.backlay.style.left=left;
		this.backlay.style.width=width;
		this.backlay.style.height=height;
	
		this.backimg.style.width=width;
		this.backimg.style.height=height;
			
		if(this.type=="qcif")
		{
			this.chbutton.moveto(top+2,left+width-20,17,17);
			this.caplabel.moveto(top+3,left+8,60,18);
			this.play.moveto(top+20,left,width,height-20);
		}
		else if(this.type=="cif")
		{
			this.play.moveto(top+10,left+10,width-20,height-20);
		}
	};
	this.hidewnd=function()
	{
		this.backlay.style.visibility="hidden";
		this.caplabel.hidewnd();
		this.chbutton.hidewnd();
		this.play.hidewnd();
	};
}
function chwndbutton(lay,img)
{
	this.lay=lay;
	this.img=img;
	this.moveto=function(top,left,width,height)
	{
		this.lay.style.top=top;
		this.lay.style.left=left;
		this.lay.style.width=width;
		this.lay.style.height=height;
		this.img.style.width=width;
		this.img.style.height=height;
	};
	this.hidewnd=function()
	{
		this.lay.style.visibility="hidden";
	};
}
function capwnd(lay,text)
{
	this.lay=lay;
	this.text=text;
	this.moveto=function(top,left,width,height)
	{
		this.lay.style.top=top;
		this.lay.style.left=left;
		this.lay.style.width=width;
		this.lay.style.height=height;
		
		this.lay.innerHTML=this.text;
	}
	this.hidewnd=function()
	{
		this.lay.style.visibility="hidden";
	};
}
function mybutton(btn,enimg,disimg)
{
	this.btn=btn;
	this.enimg=enimg;
	this.disimg=disimg;
	this.enablebtn=function(benable)
	{
		this.btn.disabled=!benable;
		this.btn.src=(benable==true)?this.enimg:this.disimg;
		this.btn.style.cursor=(benable==true)?"hand":"default";
	};
}
function playbar(lay,plbtn,psbtn,stbtn,fwbtn,rebtn)
{
	this.lay=lay;
	this.plbtn=plbtn;
	this.psbtn=psbtn;
	this.stbtn=stbtn;
	this.fwbtn=fwbtn;
	this.rebtn=rebtn;
	this.moveto=function(top,left,width,height)
	{
		this.lay.style.top=top;
		this.lay.style.left=left;
	};	
}
function toolbar(pannelbar1,playbar1,trackbar1,volumebar1,volumepic1,totaltime,curtime)
{
	this.pannelbar1=pannelbar1;
	this.playbar1=playbar1;
	this.trackbar1=trackbar1;
	this.volumebar1=volumebar1;
	this.volumepic1=volumepic1;
	this.totaltime=totaltime;
	this.curtime=curtime;
	this.moveto=function(top,left,width,height)
	{
		this.pannelbar1.style.top=top;
		this.pannelbar1.style.left=left;
		this.pannelbar1.style.width=width;
		this.pannelbar1.style.height=height;
		
		this.totaltime.style.top=top+2;
		this.totaltime.style.left=left+4;
		this.curtime.style.top=top+2;
		this.curtime.style.left=left+width/2;
		this.trackbar1.moveto(top+20,left+2,width-4,23);
		this.playbar1.moveto(top+50,left,0,0);
		this.volumepic1.style.top=top+50;
		this.volumepic1.style.left=left+width-121;
		this.volumebar1.moveto(top+50,left+width-102,100,23)
		
	};
	this.settotaltimelabel=function(duration)
	{
		var hours=Math.floor(duration/3600);
		var minutes=Math.floor((duration-hours*3600)/60);
		var seconds=Math.floor(duration-hours*3600-minutes*60);
		this.totaltime.innerHTML="总时间 "+format(hours)+":"+format(minutes)+":"+format(seconds);
	};
	this.setcurrenttimelabel=function(duration)
	{
		var hours=Math.floor(duration/3600);
		var minutes=Math.floor((duration-hours*3600)/60);
		var seconds=Math.floor(duration-hours*3600-minutes*60);
		this.curtime.innerHTML="当前时间 "+format(hours)+":"+format(minutes)+":"+format(seconds);
	};
};
function wndtitle(lay,imgleft,imgmid,imgright,caption)
{
	this.lay=lay;
	this.imgleft=imgleft;
	this.imgmid=imgmid;
	this.imgright=imgright;
	this.caption=caption;
	this.moveto=function(top,left,width,height)
	{
		this.lay.style.top=top;
		this.lay.style.left=left;
		this.lay.style.width=width;
		this.lay.style.height=height;
		
		this.imgleft.style.width=41;
		this.imgleft.style.height=height;
		
		this.imgmid.style.width=width-82;
		this.imgmid.style.height=height;
		
		this.imgright.style.width=41;
		this.imgright.style.height=height;
		
		this.caption.style.top=top+12;
		this.caption.style.left=left+width/2-24;
	};
};
function indexwnd(indextitle,indexclient)
{
	this.indextitle=indextitle;
	this.indexclient=indexclient;
	this.moveto=function(top,left,width,height)
	{
		this.indextitle.moveto(top,left,width,28);
		this.indexclient.style.top=top+28;
		this.indexclient.style.left=left;
		this.indexclient.style.width=width;
		this.indexclient.style.height=height-28;
	};
};
function framewnd3(wnd1,wnd2,wnd3,toolbar1,indexwnd1,resinfownd1)
{
	this.wnd1=wnd1;
	this.wnd2=wnd2;
	this.wnd3=wnd3;
	this.plays=new Array();
	this.plays[0]=wnd1.play;	//media player
	this.plays[1]=wnd3.play;	//capwnd player
	this.plays[2]=wnd2.play;	//capwnd player
	this.toolbar1=toolbar1;
	this.indexwnd1=indexwnd1;
	this.resinfownd1=resinfownd1;
	this.filelist=new Array();
	this.bfirst=false;
	this.totaltimes=0;
	this.updatewnd=function()
	{
		var clientwidth=document.documentElement.offsetWidth-22;
		var clientheight=document.documentElement.offsetHeight-20;
		//////////////////////////////
		var tmpplay=this.wnd1.play;
		this.wnd1.play=this.wnd3.play;
		this.wnd3.play=tmpplay;
		//////////////////////////////
		this.movewnds();
		
		this.toolbar1.moveto(504,180,600,85);
		//this.indexwnd1.moveto(2,785,210,575);
		this.indexwnd1.moveto(336,785,210,251);
		this.resinfownd1.moveto(336,2,176,253);
	};
	this.movewnds=function()
	{
		//this.wnd1.moveto(2,2,176,165);
		//this.wnd2.moveto(168,2,176,165);
		//this.wnd3.moveto(0,180,600,500);
		
		this.wnd1.moveto(2,2,176,165);
		this.wnd2.moveto(168,2,176,165);
		this.wnd3.moveto(0,180,600,500);
		
	};
	this.changewnd1=function()
	{
		//alert("changewnd1");
		var tmpplay=this.wnd1.play;
		this.wnd1.play=this.wnd3.play;
		this.wnd3.play=tmpplay;
		this.movewnds();
		
		
	};
	this.changewnd2=function()
	{
		//alert("changewnd2");
		var tmpplay=this.wnd2.play;
		this.wnd2.play=this.wnd3.play;
		this.wnd3.play=tmpplay;
		this.movewnds();
		//this.wnd3.play.moveto(300,785,176,144);
	};
	this.play1=function()
	{
		this.plays[0].player.controls.play();
	};
	this.pause1=function()
	{     //player1.player.controls.pause();
		this.plays[0].player.controls.pause();
		
	};
	this.stop1=function()
	{
		this.plays[0].player.controls.stop();
	};
	this.back1=function()
	{
		this.plays[0].player.controls.FastReverse();
	};
	this.forward1=function()
	{
		this.plays[0].player.controls.FastForward();
	};
	this.setposition1=function(newposition)
	{
		this.plays[0].player.controls.currentPosition=newposition;
	};
	this.openfile=function(filelist,channelcount)
	{
		
		if(filelist.length>1)
			return;
		this.channelcount=channelcount;
		this.plays[0].player.url=filelist[0];
		this.play1();
		this.bfirst=true;
	};
	this.capturewnd=function()
	{
		//alert("sdfsdf");
		var subwndcount=this.plays[1].player.MaxCount;
		for(var i=1;i<=subwndcount;i++)
		{
			this.plays[1].player.SetIdx(i);
			subwndhandle=this.plays[1].player.GetHnd;		
			this.plays[i].player.SetCapter(subwndhandle);
		}	
	};
	this.freecap=function()
	{
		this.plays[1].player.free();
		this.plays[2].player.free();
	};
};
function framewnd(wnd3,toolbar1,indexwnd1,resinfownd1)
{
	this.wnd3=wnd3;
	this.plays=new Array();
	this.plays[0]=wnd3.play;	
	this.toolbar1=toolbar1;
	this.indexwnd1=indexwnd1;
	this.resinfownd1=resinfownd1;
	this.filelist=new Array();
	this.bfirst=false;
	this.totaltimes=0;
	this.updatewnd=function()
	{
		var clientwidth=document.documentElement.offsetWidth-22;
		var clientheight=document.documentElement.offsetHeight-20;
		this.movewnds();
		
		this.toolbar1.moveto(504,180,600,85);
		//this.indexwnd1.moveto(2,785,210,575);
		this.indexwnd1.moveto(336,785,210,251);
		this.resinfownd1.moveto(336,2,176,253);
	};
	this.movewnds=function()
	{
		this.wnd3.moveto(0,180,600,500);
	};
	this.changewnd1=function()
	{
	};
	this.changewnd2=function()
	{
	};
	this.play1=function()
	{
		this.plays[0].player.controls.play();
	};
	this.pause1=function()
	{     //player1.player.controls.pause();
		this.plays[0].player.controls.pause();
		
	};
	this.stop1=function()
	{
		this.plays[0].player.controls.stop();
	};
	this.back1=function()
	{
		this.plays[0].player.controls.FastReverse();
	};
	this.forward1=function()
	{
		this.plays[0].player.controls.FastForward();
	};
	this.setposition1=function(newposition)
	{
		this.plays[0].player.controls.currentPosition=newposition;
	};
	this.openfile=function(filelist,channelcount)
	{
		
		if(filelist.length>1)
			return;
		this.channelcount=channelcount;
		this.plays[0].player.url=filelist[0];
		this.play1();
		this.bfirst=true;
	};
	this.capturewnd=function()
	{
		//alert("sdfsdf");
		var subwndcount=this.plays[1].player.MaxCount;
		for(var i=1;i<=subwndcount;i++)
		{
			this.plays[1].player.SetIdx(i);
			subwndhandle=this.plays[1].player.GetHnd;		
			this.plays[i].player.SetCapter(subwndhandle);
		}	
	};
	this.freecap=function()
	{
		this.plays[1].player.free();
		this.plays[2].player.free();
	};
};
function framewnd2(wnd1,wnd3,toolbar1,indexwnd1,resinfownd1)
{
	this.wnd1=wnd1;
	this.wnd3=wnd3;
	this.plays=new Array();
	this.plays[0]=wnd1.play;	
	this.plays[1]=wnd3.play;	
	this.toolbar1=toolbar1;
	this.indexwnd1=indexwnd1;
	this.resinfownd1=resinfownd1;
	this.filelist=new Array();
	this.bfirst=false;
	this.totaltimes=0;
	this.updatewnd=function()
	{
		var clientwidth=document.documentElement.offsetWidth-22;
		var clientheight=document.documentElement.offsetHeight-20;
		//////////////////////////////
		var tmpplay=this.wnd1.play;
		this.wnd1.play=this.wnd3.play;
		this.wnd3.play=tmpplay;
		//////////////////////////////
		this.movewnds();
		
		this.toolbar1.moveto(504,180,600,85);
		//this.indexwnd1.moveto(2,785,210,575);
		this.indexwnd1.moveto(336,785,210,251);
		this.resinfownd1.moveto(336,2,176,253);
	};
	this.movewnds=function()
	{
		
		this.wnd1.moveto(2,2,176,165);
		this.wnd3.moveto(0,180,600,500);
		
	};
	this.changewnd1=function()
	{
		//alert("changewnd1");
		var tmpplay=this.wnd1.play;
		this.wnd1.play=this.wnd3.play;
		this.wnd3.play=tmpplay;
		this.movewnds();
		
		
	};
	this.changewnd2=function()
	{
	};
	this.play1=function()
	{
		this.plays[0].player.controls.play();
	};
	this.pause1=function()
	{     //player1.player.controls.pause();
		this.plays[0].player.controls.pause();
		
	};
	this.stop1=function()
	{
		this.plays[0].player.controls.stop();
	};
	this.back1=function()
	{
		this.plays[0].player.controls.FastReverse();
	};
	this.forward1=function()
	{
		this.plays[0].player.controls.FastForward();
	};
	this.setposition1=function(newposition)
	{
		this.plays[0].player.controls.currentPosition=newposition;
	};
	this.openfile=function(filelist,channelcount)
	{
		
		if(filelist.length>1)
			return;
		this.channelcount=channelcount;
		this.plays[0].player.url=filelist[0];
		this.play1();
		this.bfirst=true;
	};
	this.capturewnd=function()
	{
		//alert("sdfsdf");
		var subwndcount=this.plays[1].player.MaxCount;
		for(var i=1;i<=subwndcount;i++)
		{
			this.plays[1].player.SetIdx(i);
			subwndhandle=this.plays[1].player.GetHnd;		
			this.plays[i].player.SetCapter(subwndhandle);
		}	
	};
	this.freecap=function()
	{
		this.plays[1].player.free();
	};
};
function framewnd4(wnd1,wnd2,wnd3,wnd4,toolbar1,indexwnd1,resinfownd1)
{
	this.wnd1=wnd1;
	this.wnd2=wnd2;
	this.wnd3=wnd3;
	this.wnd4=wnd4;
	this.plays=new Array();
	this.plays[0]=wnd1.play;	//media player
	this.plays[1]=wnd3.play;	//capwnd player
	this.plays[2]=wnd2.play;	//capwnd player
	this.plays[3]=wnd4.play;	//capwnd player
	this.toolbar1=toolbar1;
	this.indexwnd1=indexwnd1;
	this.resinfownd1=resinfownd1;
	this.filelist=new Array();
	this.bfirst=false;
	this.totaltimes=0;
	this.updatewnd=function()
	{
		var clientwidth=document.documentElement.offsetWidth-22;
		var clientheight=document.documentElement.offsetHeight-20;
		//////////////////////////////
		var tmpplay=this.wnd1.play;
		this.wnd1.play=this.wnd3.play;
		this.wnd3.play=tmpplay;
		//////////////////////////////
		this.movewnds();
		
		this.toolbar1.moveto(504,180,600,85);
		//this.indexwnd1.moveto(2,785,210,575);
		this.indexwnd1.moveto(336,785,210,251);
		this.resinfownd1.moveto(336,2,176,253);
	};
	this.movewnds=function()
	{
		//this.wnd1.moveto(2,2,176,165);
		//this.wnd2.moveto(168,2,176,165);
		//this.wnd3.moveto(0,180,600,500);
		
		this.wnd1.moveto(2,2,176,165);
		this.wnd2.moveto(168,2,176,165);
		this.wnd3.moveto(0,180,600,500);
		this.wnd4.moveto(0,785,176,165);
		
	};
	this.changewnd1=function()
	{
		//alert("changewnd1");
		var tmpplay=this.wnd1.play;
		this.wnd1.play=this.wnd3.play;
		this.wnd3.play=tmpplay;
		this.movewnds();
		
		
	};
	this.changewnd2=function()
	{
		//alert("changewnd2");
		var tmpplay=this.wnd2.play;
		this.wnd2.play=this.wnd3.play;
		this.wnd3.play=tmpplay;
		this.movewnds();
		//this.wnd3.play.moveto(300,785,176,144);
	};
	this.changewnd4=function()
	{
		//alert("changewnd2");
		var tmpplay=this.wnd4.play;
		this.wnd4.play=this.wnd3.play;
		this.wnd3.play=tmpplay;
		this.movewnds();
		//this.wnd3.play.moveto(300,785,176,144);
	};

	this.play1=function()
	{
		this.plays[0].player.controls.play();
	};
	this.pause1=function()
	{     //player1.player.controls.pause();
		this.plays[0].player.controls.pause();
		
	};
	this.stop1=function()
	{
		this.plays[0].player.controls.stop();
	};
	this.back1=function()
	{
		this.plays[0].player.controls.FastReverse();
	};
	this.forward1=function()
	{
		this.plays[0].player.controls.FastForward();
	};
	this.setposition1=function(newposition)
	{
		this.plays[0].player.controls.currentPosition=newposition;
	};
	this.openfile=function(filelist,channelcount)
	{
		
		if(filelist.length>1)
			return;
		this.channelcount=channelcount;
		this.plays[0].player.url=filelist[0];
		this.play1();
		this.bfirst=true;
	};
	this.capturewnd=function()
	{
		//alert("sdfsdf");
		var subwndcount=this.plays[1].player.MaxCount;
		for(var i=1;i<=subwndcount;i++)
		{
			this.plays[1].player.SetIdx(i);
			subwndhandle=this.plays[1].player.GetHnd;		
			this.plays[i].player.SetCapter(subwndhandle);
		}	
	};
	this.freecap=function()
	{
		this.plays[1].player.free();
		this.plays[2].player.free();
		this.plays[3].player.free();
	};
};
function framewnd5(wnd1,wnd2,wnd3,wnd4,wnd5,toolbar1,indexwnd1,resinfownd1)
{
	this.wnd1=wnd1;
	this.wnd2=wnd2;
	this.wnd3=wnd3;
	this.wnd4=wnd4;
	this.wnd5=wnd5;
	this.plays=new Array();
	this.plays[0]=wnd1.play;	//media player
	this.plays[1]=wnd3.play;	//capwnd player
	this.plays[2]=wnd2.play;	//capwnd player
	this.plays[3]=wnd4.play;	//capwnd player
	this.plays[4]=wnd5.play;	//capwnd player
	this.toolbar1=toolbar1;
	this.indexwnd1=indexwnd1;
	this.resinfownd1=resinfownd1;
	this.filelist=new Array();
	this.bfirst=false;
	this.totaltimes=0;
	this.updatewnd=function()
	{
		var clientwidth=document.documentElement.offsetWidth-22;
		var clientheight=document.documentElement.offsetHeight-20;
		//////////////////////////////
		var tmpplay=this.wnd1.play;
		this.wnd1.play=this.wnd3.play;
		this.wnd3.play=tmpplay;
		//////////////////////////////
		this.movewnds();
		
		this.toolbar1.moveto(504,180,600,85);
		//this.indexwnd1.moveto(2,785,210,575);
		this.indexwnd1.moveto(336,785,210,251);
		this.resinfownd1.moveto(336,2,176,253);
	};
	this.movewnds=function()
	{
		//this.wnd1.moveto(2,2,176,165);
		//this.wnd2.moveto(168,2,176,165);
		//this.wnd3.moveto(0,180,600,500);
		
		this.wnd1.moveto(2,2,176,165);
		this.wnd2.moveto(168,2,176,165);
		this.wnd3.moveto(0,180,600,500);
		this.wnd4.moveto(2,785,176,165);
		this.wnd5.moveto(168,785,176,165);
	};
	this.changewnd1=function()
	{
		//alert("changewnd1");
		var tmpplay=this.wnd1.play;
		this.wnd1.play=this.wnd3.play;
		this.wnd3.play=tmpplay;
		this.movewnds();
		
		
	};
	this.changewnd2=function()
	{
		//alert("changewnd2");
		var tmpplay=this.wnd2.play;
		this.wnd2.play=this.wnd3.play;
		this.wnd3.play=tmpplay;
		this.movewnds();
		//this.wnd3.play.moveto(300,785,176,144);
	};
	this.changewnd4=function()
	{
		//alert("changewnd2");
		var tmpplay=this.wnd4.play;
		this.wnd4.play=this.wnd3.play;
		this.wnd3.play=tmpplay;
		this.movewnds();
		//this.wnd3.play.moveto(300,785,176,144);
	};
	this.changewnd5=function()
	{
		//alert("changewnd2");
		var tmpplay=this.wnd5.play;
		this.wnd5.play=this.wnd3.play;
		this.wnd3.play=tmpplay;
		this.movewnds();
		//this.wnd3.play.moveto(300,785,176,144);
	};
	this.play1=function()
	{
		this.plays[0].player.controls.play();
	};
	this.pause1=function()
	{     //player1.player.controls.pause();
		this.plays[0].player.controls.pause();
		
	};
	this.stop1=function()
	{
		this.plays[0].player.controls.stop();
	};
	this.back1=function()
	{
		this.plays[0].player.controls.FastReverse();
	};
	this.forward1=function()
	{
		this.plays[0].player.controls.FastForward();
	};
	this.setposition1=function(newposition)
	{
		this.plays[0].player.controls.currentPosition=newposition;
	};
	this.openfile=function(filelist,channelcount)
	{
		
		if(filelist.length>1)
			return;
		this.channelcount=channelcount;
		this.plays[0].player.url=filelist[0];
		this.play1();
		this.bfirst=true;
	};
	this.capturewnd=function()
	{
		//alert("sdfsdf");
		var subwndcount=this.plays[1].player.MaxCount;
		for(var i=1;i<=subwndcount;i++)
		{
			this.plays[1].player.SetIdx(i);
			subwndhandle=this.plays[1].player.GetHnd;		
			this.plays[i].player.SetCapter(subwndhandle);
		}	
	};
	this.freecap=function()
	{
		this.plays[1].player.free();
		this.plays[2].player.free();
		this.plays[3].player.free();
		this.plays[4].player.free();
	};
};

