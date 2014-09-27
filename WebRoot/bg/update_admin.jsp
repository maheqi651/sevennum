<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/bg/common/taglib.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>添加课程分类</title>
		 
		<script>
			 function check() {
				 alert("");
					return false;
				 
			}
			function ispassword() {
			alert("");
				var kName = document.getElementById("password");
				var kNameSpan = document.getElementById("passwordNameSpan");
				kNameSpan.innerHTML = "";
				var passwords=${session.admin.password}
				//alert(kName.value);
				if(passwords!=kName.value) {
					kNameSpan.innerHTML = "<font color='red'>" + "密码不正确" + "</font>"
					return false;
				}
				return true;
			}
			function ismatch() {
				var newpass = document.getElementById("newpassword");
				var againpass=document.getElementById("againpassword");
				var kNameSpan = document.getElementById("againpasswordNameSpan");
				kNameSpan.innerHTML = "";
				//alert(kName.value);
				
				if(newpass!=againpass)) {
					kNameSpan.innerHTML = "<font color='red'>" + "密码不一致" + "</font>"
					return false;
				}
				return true;
			}
			function check1() {
				if(ismatch()&&ispassword()) {
					return true;
				} else {
					return false;
				}
			}
		</script>
	</head>

	<body class="body1">
		<form method="post" action="updateadmin.htmls" onsubmit='return check()'>
		
			<div align="center">
				<div style="textalian:center;color:red;fontsize:10pt"> 
				 ${msg } 
				</div>
				<table width="95%" border="0" cellspacing="2" cellpadding="2">
					<tr>
						<td>&nbsp;
					  </td>
					</tr>
				</table>
				<table width="95%" border="0" cellspacing="0" cellpadding="0"
					height="8">
					<tr>
						<td width="522" class="p1" height="2" nowrap>
						<div align="left">
							<img src="../images/mark_arrow_03.gif" width="14" height="14">
							&nbsp;
							<b>管理员模块&gt;&gt;修改信息</b>
						</div>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="26" >
							<div align="right">
								<font color="#FF0000">*</font>用户名:&nbsp;							</div> 
											</td>
						<td>
						 <input name="id"  type="hidden" value="${session.admin.id }" />
						 <input name="username"  type="text" readonly="readonly" value="${session.admin.username }"/>
						</td>
					</tr>
					 
					 <tr>
						<td height="26" >
							<div align="right">
								<font color="#FF0000">*</font>密码:&nbsp;							</div> 
											</td>
						<td>
						<input name="password" type="password" id="password" style="width:130px;height:20px;">
						<span id="passwordNameSpan"></span>
						</td>
					</tr>
					<tr>
						<td height="26" >
							<div align="right">
								<font color="#FF0000">*</font>新密码:&nbsp;							</div> 
											</td>
						<td>
					<input name="newpassword" type="password" id="newpassword" style="width:130px;height:20px;">
						
						<span id="newpasswordNameSpan"></span>
						</td>
					</tr>
					<tr>
						<td height="26" >
							<div align="right">
								<font color="#FF0000">*</font>确定密码:&nbsp;							</div> 
											</td>
						<td>
					<input name="againpassword" type="password" id="againpassword" style="width:130px;height:20px;">
						
						<span id="againpasswordNameSpan"></span>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<div align="center">
					<input  type="submit" id="btnAdd" 
						value="添加"  >
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="btnBack" class="button1" type="button" id="btnBack"
						value="返回" onClick="history.go(-1)">
				</div>
			</div>
		</form>
	</body>
</html>
