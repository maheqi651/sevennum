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
		<script src="../../js/validate.js"></script>
		<script>
			 
			function isLagelKName() {
				var kName = document.getElementById("cstname");
				var kNameSpan = document.getElementById("kNameSpan");
				kNameSpan.innerHTML = "";
				//alert(kName.value);
				if(isEmpty(kName.value)) {
					kNameSpan.innerHTML = "<font color='red'>" + "菜单项不能为空" + "</font>"
					return false;
				}
				return true;
			}
			function check() {
				if(isLagelKName()) {
					return true;
				} else {
					return false;
				}
			}
		</script>
	</head>

	<body class="body1">
		<form method="post" action="updatecoursetype.htmls" onsubmit="return check()">
		<c:if test="${not empty  coursestype}">
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
							<b>课程管理&gt;&gt;修改课程信息分类</b>
						</div>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td height="26" >
							<div align="right">
								<font color="#FF0000">*</font>选择导航:&nbsp;							</div> 
											</td>
						<td>
						<input name="cstid" type="hidden" value="${coursestype.cstid}" }  >
						<select name="coursetype">
						<c:if test="${coursestype.coursetype==1}">
						<option value="1" selected="selected">游戏首页</option>
						</c:if>
					 
							<option value="1">游戏首页</option>
						 
						</select>
						</td>
					</tr>
					<tr>
						<td height="26" >
							<div align="right">
								<font color="#FF0000">*</font>选择语言:&nbsp;							</div> 
											</td>
						<td>
						<select name="locals">
						<c:if test="${coursestype.locals==0}">
						<option value="0" selected="selected">中文</option>
						</c:if>
						<c:if test="${coursestype.locals==1}">
						<option value="1" selected="selected">English</option>
						 </c:if>
						 <option value="0">中文</option>
						 <option value="1">English</option>
						</select>
						</td>
					</tr>
					 <tr>
						<td height="26" >
							<div align="right">
								<font color="#FF0000">*</font>菜单项:&nbsp;							</div> 
											</td>
						<td>
						<input name="cstname" id="cstname" style="width:130px;height:20px;" value="${coursestype.cstname }">
						<span id="kNameSpan"></span>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<div align="center">
					<input  type="submit" id="btnAdd"
						value="确定修改"  >
					&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="btnBack" class="button1" type="button" id="btnBack"
						value="返回" onClick="history.go(-1)">
				</div>
			</div>
			</c:if>
		</form>
	</body>
</html>
