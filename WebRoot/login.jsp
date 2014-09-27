<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
 <HTML>
<HEAD>
<base href="<%=basePath %>">
<TITLE>管理中心登陆 V1.0</TITLE>
<LINK href="images/Login.css" type=text/css rel=stylesheet>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<style type="text/css">
<!--
body,td,th {
	font-family: 宋体;
}
-->
</style>
<script>
/////////////鼠标滑过文本框变色、、、、、、、、、、、开始
window.onload=function change(){
var Arrayinput = document.getElementsByTagName("input");
for(var i=0;i<Arrayinput.length;i++){
       Arrayinput[i].onmouseover=inputOver;
	   Arrayinput[i].onmouseout=inputOut;
}}
function inputOver(event){
 var event=event || window.event;
 var source = event.srcElement || event.target;
///////////////////////////鼠标 onmouseover 时文本框里焦点在此文本框信息后
    if  (this.createTextRange)  {  
       var  r  =  this.createTextRange(); 
       r.moveStart('character',  this.value.length);  
       r.collapse();
	   if(r.onclick){}else{r.select();}}
///////////////////////////鼠标 onmouseover 时文本框里焦点在此文本框信息后
 if(this.name=="user"){source.className="user_text2";}
 if(this.name=="pass"){source.className="pass_text2";}
 if(this.name=="btn"){source.className="btn2";}
 }
function inputOut(event){
 var event=event || window.event;
 var source = event.srcElement || event.target;
 if(this.name=="user"){source.className="user_text";}
 if(this.name=="pass"){source.className="pass_text";}
 if(this.name=="btn"){source.className="btn1"}
}
/////////////鼠标滑过文本框变色、、、、、、、、、、、结束
</script>
</HEAD>
<BODY id=userlogin_body>

<br>
<form action="userlogin.action" method="post"   name="form1">
  <table width="572" height="315" border="0" align="center" cellpadding="0" cellspacing="0" background="images/1.gif" style="background-repeat: no-repeat;">
    <tr>
      <td height="122" align="right"><img src="images/2.gif" width="104" height="105"></td>
      <td colspan="2">
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/3.gif" width="275" height="62"></td>
    </tr>
		 <tr>
      <td height="50" align="right">角&nbsp;&nbsp;色：</td>
					<td>
						<select class="user_text11" name="usertype">

							<option value="1">
								--------客户经理---------
							</option>
							<option value="2">
								------高级客户经理-------
							</option>
							<option value="3">
								------银行业务员--------
							</option>
							<option value="4">
								------系统管理员--------
							</option>

						</select>
					</td>
				</tr>
 
    <tr>
      <td width="179" height="37" align="right">账&nbsp;&nbsp;号：</td>
      <td width="180"><input class="user_text" id="user" type="text" name="username">
      </td>
      <td width="224" rowspan="2">
	 &nbsp;&nbsp;  <input name="btn" type="submit" class="btn2" id="btn" style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" value="       ">
      </td>
    </tr>
    <tr>
      <td height="26" align="right">密&nbsp;&nbsp;码：</td>
      <td><input name="password" type="password" class="pass_text" id="pass">
      </td>
    </tr>

    <tr>
      <td height="60" align="right">&nbsp;</td>
      <td><span style="color:red;font-size:11px"><% if(request.getAttribute("msg")!=null)out.print(request.getAttribute("msg"));%></spn>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>

 </BODY></HTML>
 