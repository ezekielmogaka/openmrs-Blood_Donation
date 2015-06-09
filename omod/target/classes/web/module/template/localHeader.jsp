<spring:htmlEscape defaultHtmlEscape="true" />
<ul id="menu">
	<li class="first"><a
		href="${pageContext.request.contextPath}/admin"><spring:message
				code="admin.title.short" /></a></li>

	<li
		<c:if test='<%= request.getRequestURI().contains("/manage") %>'>class="active"</c:if>>
		<a
<<<<<<< HEAD
		href="${pageContext.request.contextPath}/module/blooddonationmanager/manage.form"><spring:message
				code="blooddonationmanager.manage" /></a>
=======
		href="${pageContext.request.contextPath}/module/blooddonation/manage.form"><spring:message
				code="blooddonation.manage" /></a>
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706
	</li>
	
	<!-- Add further links here -->
</ul>
<h2>
<<<<<<< HEAD
	<spring:message code="blooddonationmanager.title" />
=======
	<spring:message code="blooddonation.title" />
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706
</h2>
