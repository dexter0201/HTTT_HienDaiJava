<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<a href="${pageContext.request.contextPath}/supplier/add">Add</a>
<table class="table">
	<tr><th>Name</th><th class="colsmall">Edit</th><th class="colsmall">Delete</th></tr>
	<c:forEach var="item" items="${suppliers}">
		<tr>
			<td>${item.supplierName}</td>
			<td><a href="${pageContext.request.contextPath}/supplier/edit/${item.supplierId}"><img src="${pageContext.request.contextPath}/images/Edit.gif" /></a></td>
			<td><a href="${pageContext.request.contextPath}/supplier/delete/${item.supplierId}"><img src="${pageContext.request.contextPath}/images/Delete.gif" /></a></td>
		</tr>
	</c:forEach>
</table>
