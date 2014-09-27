<%@ page language="java" import="java.util.*,bean.*" pageEncoding="utf-8"%>
<%@ include file="/bg/common/taglib.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>管理知识点</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE4 {
	color: #03515d;
	font-size: 12px;
}
-->
</style>
<script type="text/javascript">
function selectAll(field){

	//根据checkbox框的名称，查询得到所有的checkbox对象
	var idCheckboxs = document.getElementsByName("id");
	for(var i=0; i<idCheckboxs.length; i++){
		//判断顶上那个checkbox框的选中状态
		if(field.checked){
			{
			idCheckboxs[i].checked = true;
			}
		}else{
			idCheckboxs[i].checked = false;
		}
	}
}
function del(type){
	//判断有哪些checkbox框被选中了
	
	var idCheckboxs = document.getElementsByName("id");
	var url = "deleteuser.htmls?local=0";
	var checkedIds = [];
	for(var i=0; i<idCheckboxs.length; i++){
		if(idCheckboxs[i].checked){
			checkedIds[checkedIds.length] = idCheckboxs[i].value;
			 
		}
	}
	if(checkedIds.length>0){
	for(var i=0; i<checkedIds.length; i++){
		url = url + "&ids="+checkedIds[i];
	}
	//通过GET方式，向后台递交一个请求
	window.location = url;
	}else{
	
	alert("请选择后在进行删除");
	}
	
}
</script>
<script>
var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>

</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="../images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="../images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="../images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[知识点模块]-[管理知识点]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="180"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center">
                   
                    
                    <td class="STYLE1"><div align="center">  </div></td>
                  </tr>
                </table></td>
                 
                
                <td width="52"> </td>
                  <td width="52"><table width="88%" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td class="STYLE1"><div align="center"><img src="../images/11.gif" width="14" height="14" /></div></td>
                    <td class="STYLE1"><a href="javascript:del()">删除</a></td>
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="../images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="../images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
            <td width="3%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkbox" value="" onclick="selectAll(this)"/>
            </div></td>
			<td width="3%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">ID</span></div></td>             
            <td width="15%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">用户名称</span></div></td>
			<td width="10%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">真实名</span></div></td>
           <td width="10%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">电话</span></div></td>
           <td width="10%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">email</span></div></td>
            <td width="15%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">区域</span></div></td>
           <td width="15%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">公司</span></div></td>
            <td width="15%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF" class="STYLE1"><div align="center">基本操作</div></td>
          </tr>
           <c:if test="${not empty pv.list}">
      <c:forEach items="${pv.list}" var="a">
          <tr>
            <td height="20" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="id"  id="id" value="${a.id }" />
            </div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${a.id }</span></div></td>
             
             <td height="20" bgcolor="#FFFFFF">
	            <div align="center">
	            <span class="STYLE1">
	            <c:choose>
	            	<c:when test="${fn:length(a.username) > 15}">
	            		<c:out value="${fn:substring(a.username, 0, 15)}......" />
	            	</c:when>
	            	<c:otherwise>
	            		${a.username}
	            	</c:otherwise>
	            </c:choose>
	            </span>
	            </div>
            </td>
             
             <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${a.realname }</span></div></td>
             <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${a.phone }</span></div></td>
             <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${a.email }</span></div></td>
                <td height="20" bgcolor="#FFFFFF">
	            <div align="center">
	            <span class="STYLE1">
	            <c:choose>
	            	<c:when test="${fn:length(a.area) > 15}">
	            		<c:out value="${fn:substring(a.area, 0, 15)}......" />
	            	</c:when>
	            	<c:otherwise>
	            		${a.area}
	            	</c:otherwise>
	            </c:choose>
	            </span>
	            </div>
            </td>
            
             <td height="20" bgcolor="#FFFFFF">
	            <div align="center">
	            <span class="STYLE1">
	            <c:choose>
	            	<c:when test="${fn:length(a.company) > 15}">
	            		<c:out value="${fn:substring(a.company, 0, 15)}......" />
	            	</c:when>
	            	<c:otherwise>
	            		${a.company}
	            	</c:otherwise>
	            </c:choose>
	            </span>
	            </div>
            </td>
            
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4">
			<img src="../images/del.gif" width="16" height="16" />
			<a href="deleteuser.htmls?ids=${a.id }">删除</a>
			</span></div></td>
          </tr>
           </c:forEach>
      </c:if>
       
       <c:if test="${empty pv.list}">
      <tr>
          <td height="20" colspan="9" bgcolor="#FFFFFF" class="STYLE19"><div align="center">没有通知可以显示</div></td>
      </tr>
      </c:if>
        </table></td>
        <td width="8" background="../images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
   <tr>
    <td height="35" background="../images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="../images/tab_18.gif" width="12" height="35" /></td>
        <td><c:if test="${not empty pv.list}">
        <jsp:include page="/bg/common/pager.jsp">
			<jsp:param name="url" value="finduser.do"/>
		</jsp:include></c:if>
        </td>
        <td width="16"><img src="../images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
