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
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td class="STYLE4">
				&nbsp;&nbsp;共有 ${pv.total } 条记录，当前第 ${currentPageNumber }/
				<pg:last>
            ${pageNumber }
            </pg:last>
				页
			</td>
			<td>
				<table border="0" align="right" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							 <c:forEach items="${param.params}" var="p">
        	                    <pg:param name="${p}"/>
                                   </c:forEach>
							<pg:first>
								<a id="firstPage" href="${pageUrl}">首页</a>
							</pg:first>
							<pg:prev>
								<a href="${pageUrl}">前页</a>
							</pg:prev>
							<pg:pages>
								<c:choose>
									<c:when test="${currentPageNumber eq pageNumber}">
										<font color="red">${pageNumber }</font>
									</c:when>
									<c:otherwise>
										<a href="${pageUrl }${param.command}">${pageNumber}</a>
									</c:otherwise>
								</c:choose>
							</pg:pages>
							<pg:next>
								<a href="${pageUrl}">下页</a>
							</pg:next>
							<pg:last>
								<a href="${pageUrl}">尾页</a>
							</pg:last>

							<select name="pagesize" onchange="selectPagesize(this)">
								<c:forEach begin="5" end="50" step="5" var="i">
									<option value="${i }"
										<c:if test="${i eq pagesize }">selected</c:if>>
										${i }
									</option>
								</c:forEach>
							</select>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</pg:pager>







