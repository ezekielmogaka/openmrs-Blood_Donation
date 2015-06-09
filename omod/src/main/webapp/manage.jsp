<<<<<<< HEAD
<
=======
<%--
<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>

<%@ include file="template/localHeader.jsp"%>

<p>Hello ${user.systemId}!</p>

<%@ include file="/WEB-INF/template/footer.jsp"%>--%>

>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706

<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>
<%@ include file="includes/js_css.jsp" %>

<<<<<<< HEAD
<link type="text/css" rel="stylesheet"  href="${pageContext.request.contextPath}/moduleResources/blooddonationmanager/styles/common.css" />
<openmrs:require privilege="All Blood Bank" otherwise="/login.htm" redirect="/module/blooddonationmanager/main.form" />
=======
<link type="text/css" rel="stylesheet"	href="${pageContext.request.contextPath}/moduleResources/blooddonation/styles/common.css" />
<openmrs:require privilege="All Blood Bank" otherwise="/login.htm" redirect="/module/blooddonation/main.form" />
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706

<div style="border-bottom: 1px solid black;">
    <ul id="menu">
        <li class="first">
<<<<<<< HEAD
            <a href="main.form" style="font-size:large; font-weight:bold; text-decoration:none;">Blood Bank System</a>
=======
            <a href="/main.form" style="font-size:large; font-weight:bold; text-decoration:none;">Blood Bank System</a>
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706
        </li>

        <openmrs:hasPrivilege privilege="Edit Encounters">
            <li <c:if test='<%= request.getRequestURI().contains("queue") %>'>class="active"</c:if>>
                <a href="queue.form">Queue</a>
            </li>
        </openmrs:hasPrivilege>

        <openmrs:hasPrivilege privilege="Edit Encounters">
            <li <c:if test='<%= request.getRequestURI().contains("addOrUpdate") %>'>class="active"</c:if>>
<<<<<<< HEAD
                <a href="addOrUpdate.form">Find/Add Donor</a>
=======
                <a href="addOrUpdate.form">Find/Add  Donor</a>
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706
            </li>
        </openmrs:hasPrivilege>

        <openmrs:hasPrivilege privilege="Edit Encounters">
            <li <c:if test='<%= request.getRequestURI().contains("viewEditTests") %>'>class="active"</c:if>>
<<<<<<< HEAD
                <a href="viewEditTests.form">View Blood Test Lab</a>
=======
                <a href="viewEditTests.form">Blood Test Lab</a>
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706
            </li>
        </openmrs:hasPrivilege>

        <openmrs:hasPrivilege privilege="Edit Encounters">
            <li <c:if test='<%= request.getRequestURI().contains("viewStock") %>'>class="active"</c:if>>
<<<<<<< HEAD
                <a href="viewStock.form">View Blood Bank Stock</a>
=======
                <a href="viewStock.form">View Stock</a>
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706
            </li>
        </openmrs:hasPrivilege>
    </ul>
</div>