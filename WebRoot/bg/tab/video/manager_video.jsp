<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="/bg/common/taglib.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/bg/tab/video/";
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
 
 
 <script>
         function selectlocals(fileid){   
         var url="findmanagervideo.htmls?locals="+fileid.value;
          this.addform.action=url;
          this.addform.submit(); 
        // window.location = url;
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
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[课程模块]-[管理课程菜单项]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">
              <tr>
                <td width="180"><table width="87%" border="0" cellpadding="0" cellspacing="0">
                 <form name="addform" action="findvideo.htmls" method="post">
                  <tr>
                    <td class="STYLE1"><div align="center">
                       <select name="locals" onchange='selectlocals(this)'>
						<c:if test="${clocals=='0'}">
						<option value="0" selected="selected">中文</option>
						</c:if>
						<c:if test="${clocals=='1'}">
						<option value="1" selected="selected">English</option>
						 </c:if>
						 <option value="0">中文</option>
						 <option value="0">中文</option>
						 <option value="1">English</option>
						 
						</select>
						
                          
                            </div>
                    <td class="STYLE1"><div align="center">
                    
                    <select name="videotype" style="width:100px;">
						 
						  <c:if test="${not empty cstlist}">
                       <c:forEach items="${cstlist}" var="a">
                           <option value="${a.typeid }">${a.typename }</option>
                       </c:forEach>
                       </c:if>
						 
						</select>
						  </div></td>
                 
                 
                  </tr>
                  
                </table></td>
                   <td width="52"></td>
                
                <td width="52"> <input style="width:50px;height:21px;background:aqua" type="submit" value="选择"/></td>
                
              </tr>
            </table></td>
          </tr>
          </form>
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
			<td width="17%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">ID</span></div></td>             
            <td width="15%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">语言</span></div></td>
		    <td width="15%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">类别</span></div></td>
            <td width="15%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">名称</span></div></td>
            <td width="35%" height="22" background="../images/bg.gif" bgcolor="#FFFFFF" class="STYLE1"><div align="center">基本操作</div></td>
          </tr>
           <c:if test="${not empty pv.list}">
      <c:forEach items="${pv.list}" var="a">
          <tr>
           
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${a.id }</span></div></td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
            <c:if test="${a.videotype.locals==0}">中文</c:if>
            <c:if test="${a.videotype.locals==1}">English</c:if>


            </span></div></td>
             <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">
             ${a.videotype.typename} 
           


            </span></div></td>
            <td height="20" bgcolor="#FFFFFF">
	            <div align="center">
	            <span class="STYLE1">
	            <c:choose>
	            	<c:when test="${fn:length(a.title) > 20}">
	            		<c:out value="${fn:substring(a.title, 0, 20)}......" />
	            	</c:when>
	            	<c:otherwise>
	            		${a.title}
	            	</c:otherwise>
	            </c:choose>
	            </span>
	            </div>
            </td>
            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4">
			<img src="../images/edt.gif" width="16" height="16" /><a href="findprevideo.htmls?ids=${a.id }&videotype=${a.videotype.locals }">编辑</a>&nbsp; &nbsp;
			<img src="../images/del.gif" width="16" height="16" />
			<a href="deletevideo.htmls?videotype=${a.videotype.locals }&ids=${a.id }">删除</a>
			</span></div></td>
          </tr>
           </c:forEach>
      </c:if>
       
       <c:if test="${empty pv.list}">
      <tr>
          <td height="20" colspan="9" bgcolor="#FFFFFF" class="STYLE19"><div align="center">没有内容可以显示</div></td>
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
        <td>
        <jsp:include page="/bg/common/pager.jsp">
			<jsp:param name="url" value="findvideo.do"/>
			<jsp:param name="params" value="videotype"/>
		</jsp:include>
        </td>
        <td width="16"><img src="../images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
    
</table>
</body>
</html>
