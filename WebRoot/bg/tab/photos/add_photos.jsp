<%@ page language="java" import="java.util.*,net.fckeditor.*" pageEncoding="utf-8"%>
<%@ include file="/bg/common/taglib.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
		<title>添加课程网站</title>
		<script src="../../js/validate.js"></script>
		<script>
			 
		 
			function istitle() {
				var kName = document.getElementById("title");
				var kNameSpan = document.getElementById("titleNameSpan");
				kNameSpan.innerHTML = "";
				//alert(kName.value);
				if(isEmpty(kName.value)) {
					kNameSpan.innerHTML = "<font color='red'>" + "标题不能为空" + "</font>"
					return false;
				}
				return true;
			}
			function check() {
				if(istitle()) {
					return true;
				} else {
					return false;
				}
			}
			function initEditor(){
	       CKEDITOR.replace( 'content',
		  {
			skin : 'office2003',
			width:700
		 } 
	   );
	   
	    }
		</script>
	</head>

	<body class="body1">
		<form method="post" action="addphotos.htmls" onsubmit="return check()"  enctype="multipart/form-data">
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
							<b>图片展示模块&gt;&gt;添加图片展示</b>
						</div>
						</td>
					</tr>
				</table>
				<hr width="97%" align="center" size=0>
				<table width="95%" border="0" cellpadding="0" cellspacing="0">
					
					 
					<tr>
						<td height="26" >
							<div align="right">
								<font color="#FF0000">*</font>语言:&nbsp;							</div> 
											</td>
						<td>
						<select name="locals">
						<option value="0">中文</option>
						<option value="1">English</option>
						</select>
						</td>
					</tr>
					 <tr>
						<td height="26" >
							<div align="right">
								<font color="#FF0000">*</font>标题:&nbsp;							</div> 
											</td>
						<td>
						<input name="title" id="title" style="width:130px;height:20px;">
						<span id="titleNameSpan"></span>
						</td>
					</tr>
					<tr>
						<td height="26" >
							<div align="right">
								<font color="#FF0000">*</font>选择image文件:&nbsp;							</div> 
											</td>
						<td>
						 <input type="file"  name="imageurl"/><font color="#FF0000">
						<span id="urlSpan"></span>
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
