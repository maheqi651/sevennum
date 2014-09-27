<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/bg/common/taglib.jsp"%>
<script type="text/javascript">
	function selectPagesize(field) {
		window.location = document.getElementById("firstPage").href
				+ "&pagesize=" +field.value;
	}
</script>
<pg:pager url="${param.url}" items="${pv.total}"
	maxPageItems="${pv.pageSize}" maxIndexPages="15"
	export="currentPageNumber=pageNumber">
	<tr>
	<td  colspan="2" align="center" ><div style="height:7px;"></div>
	<div align="center">
				<c:forEach items="${param.params}" var="p">
					<pg:param name="${p}" />
				</c:forEach>
				<pg:first>
	<a id="firstPage" href="${pageUrl}" >首页</a></pg:first> 
	<pg:prev><a href="${pageUrl}" >上一页</a></pg:prev>
				<pg:pages>
					<c:choose>
						<c:when test="${currentPageNumber eq pageNumber}">
							<font color="red">${pageNumber }</font>
						</c:when>
						<c:otherwise>
							<a href="${pageUrl }">${pageNumber}</a>
						</c:otherwise>
					</c:choose>
				</pg:pages>
				<pg:next><a href="${pageUrl}" >下一页</a></pg:next> 
	   <pg:last><a href="${pageUrl}" >末页</a></pg:last> 
	   <pg:last>共【${pageNumber }】页</pg:last>&nbsp;&nbsp;现在是第【${currentPageNumber }】页&nbsp;&nbsp;
		转到第<select name="pagesize" onchange="selectPagesize(this)">
					<c:forEach begin="5" end="50" step="5" var="i">
						<option value="${i }"
							<c:if test="${i eq pagesize }">selected</c:if>>
							${i }
						</option>
					</c:forEach>
        </select>页
	</div></td>
</tr>
</pg:pager>







