<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/fg/";
%>
<script type="text/javascript">
 function select(filed){
 alert(filed);
 
  $("#lihead1").attr("class","");
   $("#lihead2").attr("class","");
    $("#lihead3").attr("class","");
     $("#lihead4").attr("class","");
 $(filed).attr("class","active");
 //alert(this.value);
 
 }
</script>
<div class="navbar">
				<div class="navbar-inner">
					<div class="container">
					 
						<div class="nav-collapse">
							<ul class="nav">
							   <li onclick="select(this)" id="lihead1"  class="active" >
									<a href="#"><font size="-1"><i class="icon-home"></i>客户管理</font></a>
								</li  >
								<li  onclick="select(this)" id="lihead2">
									<a href="#"><font size="-1"><i class="icon-list"></i>押品管理</font></a>
								</li >
								<li onclick="select(this)" id="lihead3">
									<a href="#"><font size="-1"><i class="icon-plus-sign"></i>用信申请</font></a>
								</li >
								<li onclick="select(this)" id="lihead4">
									<a href="#"><font size="-1"><i class="icon-search"></i>申批查询</font></a>
								</li>
							 
							</ul>
							 
							<ul class="nav pull-right">
								<li>
									<a href=""><i class="icon-user"></i>username</a>
								</li>
								<li>
									<a href=""><i class="icon-off"></i>Logout</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>