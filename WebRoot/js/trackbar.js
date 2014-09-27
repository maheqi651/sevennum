
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//      日期:2006-4-21
//		作者:hlpsl e_mail:hlpsl@163.com
//		功能描述:实现网页中的拖动条类.
//		调用方法: eg:	var bar= new CTrackBar("macos");
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

function CTrackBarMap()
{
	this.barmap=new Array();
	this.barnum=1;
	this.Addbar=function(barobj)
	{
		var barname="trackbar"+this.barnum;
		this.barnum++;
		this.barmap[barname]=barobj;
		return barname;
	};
};
var trackbarmap=new CTrackBarMap();
function friemsgproc()
{
	var eventsrc=event.srcElement;
	if(event.type=="mousedown")
	{
		while (eventsrc.className!="ctrackbar")
		{
			if(eventsrc.parentElement==null)
				break;
			eventsrc=eventsrc.parentElement;
		}
		if(eventsrc.className=="ctrackbar")
		{		
			var trackbar =trackbarmap.barmap[eventsrc.id];
			trackbar.oncmdmsg(event.srcElement.id,"on"+event.type);	
		}
	}
	else if(event.type=="mouseup" || event.type=="mousemove")
	{
		for(var i=1;i<trackbarmap.barnum;i++)
		{
			
			var obj=trackbarmap.barmap["trackbar"+i];
			if(obj.bdrag==true)
			{
				
				obj.oncmdmsg(event.srcElement.id,"on"+event.type);
			}
		}
	}
};
function friemsgproc1()
{
	event.cancelBubble =true;
};
function CTrackBar(type)
{
	this.classname="ctrackbar"
	this.handle=null;
	this.cursor=null;
	this.backimgleft=null;
	this.backimgmid=null;
	this.backimgright=null;
	this.cursorpic=null;
	this.id="";
	this.top=0;
	this.left=0;
	this.width=0;
	this.height=0;
	this.cursorwidth=13;
	this.cursorheight=20;
	this.min=0;
	this.max=100;
	this.zindex=5;
	if(type=="beepblue")
	{
		this.backimgurl="player/images/trackbar_back2.jpg";
		this.backimglurl="player/images/trackbar_bkleft.jpg";
		this.backimgrurl="player/images/trackbar_bkright.jpg";
		this.cursorimgurl="player/images/trackbar_cusor.jpg";
	}
	else if(type=="macos")
	{
		this.backimgurl="player/images/tkb_bk_m_macos.jpg";
		this.backimglurl="player/images/tkb_bk_l_macos.jpg";
		this.backimgrurl="player/images/tkb_bk_r_macos.jpg";
		this.cursorimgurl="player/images/tkb_cur_macos.jpg";
	}

	this.bdrag=false;
	this.pX=0;
	this.cursoroldleft=0;

	this.createbar=function(x,y,width,height)
	{
		var div1=document.createElement("div");
		this.handle=div1;
		div1.className =this.classname;
	    div1.style.position="absolute"
		//div1.style.position="relative"
		div1.style.zindex=this.zindex;
		this.id=div1.id=trackbarmap.Addbar(this);
		this.top=div1.style.top=y;
		this.left=div1.style.left=x;
		this.width=div1.style.width=width;
		this.height=div1.style.height=height;
		
		div1.attachEvent("onmousemove",friemsgproc);
		div1.attachEvent("onmouseup",friemsgproc);

		this.backimgleft=document.createElement("img");
		this.backimgleft.src=this.backimglurl;
		this.backimgleft.style.width=10;
		this.backimgleft.style.height=height;

		this.backimgmid=document.createElement("img");
		this.backimgmid.src=this.backimgurl;
		this.backimgmid.style.width=width-20;
		this.backimgmid.style.height=height;

		this.backimgright=document.createElement("img");
		this.backimgright.src=this.backimgrurl;
		this.backimgright.style.width=10;
		this.backimgright.style.height=height;
		
		div1.appendChild(this.backimgleft);
		div1.appendChild(this.backimgmid);
		div1.appendChild(this.backimgright);

		

		var div2=document.createElement("div");
		this.cursor=div2;
		div2.style.position="absolute"
		div2.style.zindex=this.zindex+1;
		div2.style.top=0;
		div2.style.left=0;
		div2.style.width=this.cursorwidth;
		div2.style.height=this.cursorheight;
		div2.attachEvent("onmousedown",friemsgproc);
			
		var img2=document.createElement("img");
		this.cursorpic=img2;
		img2.src=this.cursorimgurl;
		img2.style.width=this.cursorwidth;
		img2.style.height=this.cursorheight;

		div2.appendChild(img2);	
		div1.appendChild(div2);
		document.body.appendChild(div1);
		
	};
	//用户的调用接口/////////////////////////////////////////////////////////////////////////
	this.setminandmax=function(min,max)
	{
		this.min=min;
		this.max=max;
	};
	this.getmax=function()
	{
		return this.max;
	};

	this.moveto=function(top,left,width,height)
	{
		this.width=width;
		this.height=height;
		this.handle.style.width=width;
		this.handle.style.height=height;
		this.backimgleft.style.width=10;
		this.backimgleft.style.height=height;
		this.backimgmid.style.width=width-20;
		this.backimgmid.style.height=height;
		this.backimgright.style.width=10;
		this.backimgright.style.height=height;
		this.handle.style.top=top;
		this.handle.style.left=left;
		this.cursor.style.top=0;
		this.cursor.style.left=0;
	};

	this.setposition=function(position)
	{
			
		if(this.bdrag==true)
			return;
		if(position<this.min ||position>this.max)
			return;
		var moveoffset=0;
		if(this.max-this.min!=0)
			moveoffset=position*((this.width-this.cursorwidth)/(this.max-this.min));		
		this.cursor.style.left= moveoffset;
		
	};
	this.getcurposition=function()
	{
		var newposition=(this.max-this.min)*(parseInt(this.cursor.style.left))/(this.width-this.cursorwidth) +this.min;
		return newposition;
	};


	this.oncmdmsg=function(id,msgtype)
	{
		if(msgtype=="onmousedown")
		{
			//alert("mousedown");
			if(this.min==this.max)
				return;
			this.handle.setCapture();
			this.bdrag=true;
			pX=parseInt(this.cursor.style.left)-event.clientX;
			this.cursoroldleft=parseInt(this.cursor.style.left);
			this.ondragbegin();
		}
		else if(msgtype=="onmousemove")
		{
			//alert("onmousemove");
			if(this.bdrag)
			{
				if(pX+event.clientX >this.width-this.cursorwidth)
				{
					this.cursor.style.left=this.width-this.cursorwidth;
				}
				else if(pX+event.clientX <0)
				{
					this.cursor.style.left=0;
				}
				else
				{
					this.cursor.style.left=pX+event.clientX;
				}				
				event.returnValue=false;
				this.ondraging();
			}
		}
		else if(msgtype=="onmouseup")
		{
			//alert("onmouseup");			
			if(this.bdrag)
			{
				var oldposition=(this.max-this.min)*(this.cursoroldleft)/(this.width-this.cursorwidth) +this.min;
				var newposition=(this.max-this.min)*(parseInt(this.cursor.style.left))/(this.width-this.cursorwidth) +this.min;
				this.ondragend();
				this.onpositionchange(Math.round(oldposition),Math.round(newposition));
			}
			this.handle.releaseCapture();
			this.bdrag=false;
			
		}		
	};
	//用户可以继承的事件接口//////////////////////////////////////////////////////////////////////////////////
	this.ondragbegin =function()
	{
	};
	this.ondraging =function()
	{
	};
	this.ondragend =function()
	{
	};
	this.onpositionchange=function(oldposition,newposition)
	{
	};

};