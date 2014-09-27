<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/fg/";
%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 
<base href="<%=basePath%>">
<title>HPU ONLINE JURDGE SYSTEM</title>
 <link rel="stylesheet" type="text/css" href="css/style.css">
 <script src="js/swfobject.js" type="text/javascript"></script>
   <script type="text/javascript" src="css/jquery-1.4.2.min.js"></script>
   <script src="<%=path%>/dwr/interface/regester.js"></script>
		<script src="<%=path%>/dwr/util.js"></script>
		<script src="<%=path%>/dwr/engine.js"></script>
</head>

<body>

<div class="maincontainer">
<div class="main">

<div class="top">
<div style=" width:984px; height:25px; float:left">&nbsp;</div>
<div class="topbox1">
<ul>
<li style=" width:348px; height:40px; float:left"> <img src="images/topboxlogo.jpg" alt=""   width="348" height="40"/></li>
<li style=" width:422px;height:40px; float:left">&nbsp;</li>
<li style=" width:214px; height:40px; line-height:40px; float:left;text-align:right">
<%String user = (String)request.getSession().getAttribute("user");
   String role =(String)request.getSession().getAttribute("role");
  // String mail=(String)request.getSession().getAttribute("newMails");
	int count=0;
  if(request.getSession().getAttribute("newMails")!=null)
     count =((Number)request.getSession().getAttribute("newMails")).intValue();
			if(user==null || user.equals("")){ %>


<a href="../sshlogin.jsp">
登录</a>&nbsp;<a href="regester.jsp">注册</a><%}else{ %>

<a href="usershow.action?uid=<%=user %>"><%=user %></a><%if(count==0){ %> 
 &nbsp;<a href="maillisttoshow.action">信箱</a> <%}else{ %>
&nbsp;<a href="maillisttoshow.action"><img src="images/mail.gif" alt="" border="0" width="16" height="16"  /> </a><%} %>
 
<%if(role.equals("admin")){ %>  &nbsp;<a href="../bg/main.jsp">管理员中心</a>
<%}else if(role.equals("advance")){ %>&nbsp;<a href="../bg/bgAddproblem.jsp">上传题目</a>
<%}else{}%>    <a href="outlogin.action">退出</a>




<% } %>

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>

</ul>


</div>


</div><!-- end top -->
<div class="topnav">
 <ul>
      <li class="li1"><a href="index.jsp"><span class="active">首&nbsp;&nbsp;&nbsp;&nbsp;页&nbsp;&nbsp;&nbsp;&nbsp;</a></span></li>
         <li class="li2"><a href="problemlist.action">习题列表</a></li>
          <li class="li3"><a href="testlist.action?zt=2">考试列表</a></li>
           <li class="li4"><a  href="userRanklist.action">排名统计</a></li>
             <li class="li5"><a  href="#">图文直播</a></li>
          <li class="li6"><a href="http://localhost:81/">OJ论坛</a></li>
          <li class="li7"><a href="#">网站简介</a></li>
   </ul>

</div><!-- end topnav -->
 <div style=" width:984px; height:150px; float:left; background:url(images/testheadhpu.jpg)">&nbsp;</div>  