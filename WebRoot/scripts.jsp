<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 
														<script type="text/javascript">
	String.prototype.format = function() {
		var tmpStr = this;
		var iLen = arguments.length;
		for ( var i = 0; i < iLen; i++) {
			tmpStr = tmpStr.replace(new RegExp("\\{" + i + "\\}", "g"),
					arguments[i]);
		}
		return tmpStr;
	}
	function $() {
		var elements = new Array();
		for ( var i = 0; i < arguments.length; i++) {
			var element = arguments[i];
			if (typeof element == 'string')
				element = document.getElementById(element);

			if (arguments.length == 1)
				return element;

			elements.push(element);
		}
		return elements;
	}
	function IMarquee() {
		function throwError() {
			alert("接口未实现：" + arguments[0]);
		}
		this.Scroll = function() {
			throwError("Scroll");
		}
		this.Clone = function() {
			throwError("Clone");
		}
	}
	function AbstractMarquee() {
		IMarquee.apply(this);
		var ref = this;
		var timer = null;
		var container = null;
		var indexs = [ "ContainerID", "Delay", "Amount", "Width", "Height" ];
		this.Amount = 1;
		this.Delay = 30;
		this.Width = 0;
		this.Height = 0;
		this.ContainerID = "";
		this.Start = function() {
			clearTimer();
			timer = setInterval(ref.Scroll, ref.Delay);
		}
		this.Stop = function() {
			clearTimer();
		}
		this.Pause = function() {
			clearTimer();
		}
		this.Init = function() {
			container = $(this.ContainerID);
			if (container == null) {
				alert("无法找到id为{0}的对象,初始化失败。".format(this.ContainerID));
				return;
			}
			;
			container.style.overflow = "hidden";
			if (this.Width > 0)
				container.style.width = this.Width + "px";
			if (this.Height > 0)
				container.style.height = this.Height + "px";
			this.Clone();
			this.AttachEvent();
			this.Start();
		}
		this.AttachEvent = function() {
			container.onmouseover = ref.Pause;
			container.onmouseout = ref.Start;
		}
		function clearTimer() {
			if (timer != null)
				clearInterval(timer);
		}
		function _Marquee() {
			var max = Math.min(indexs.length, arguments.length);
			for ( var i = 0; i < max; i++)
				this[indexs[i]] = arguments[i];
		}
		_Marquee.apply(this, arguments);
	}

	function MarqueeLeft() {
		AbstractMarquee.apply(this, arguments);
		var ref = this;
		var container = $(this.ContainerID);
		this.Clone = function() {
			container.innerHTML = '<table cellspacing="0" cellpadding="0" border="0"><tr><td>{0}</td><td>{0}</td></tr></table>'
					.format(container.innerHTML);
		}
		this.Scroll = function() {
			with (container) {
				if (scrollLeft >= firstChild.rows[0].cells[1].offsetLeft)
					scrollLeft -= firstChild.rows[0].cells[0].offsetWidth;
				else
					scrollLeft += ref.Amount;
			}
		}
	}

	var Marquee = {
		Type : {
			LEFT : function() {
				return new MarqueeLeft(arguments[0]);
			}
		},
		newInstance : function(type, container) {
			return this.Type[type.toUpperCase()].call(this, container);
		}
	}

	var m1 = Marquee.newInstance("Left", "demo1");
	m1.Init();

	//-->
</script>

													