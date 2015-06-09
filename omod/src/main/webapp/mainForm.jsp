<%@ include file="mainMenu.jsp"%>
<%@ include file="includes/js_css.jsp" %>


<<<<<<< HEAD
<openmrs:require privilege="All Blood Bank" otherwise="/login.htm" redirect="/module/blooddonationmanager/main.form" />
<ul>
	<!-- <li><a href="newIds.form">Pre-generated IDs</a> </li>
  <openmrs:hasPrivilege privilege="Manage Global Properties">-->
	<li> <a onclick="showProp()">Edit properties</a>
		<div id="properties" style="display:none">
			<openmrs:portlet url="globalProperties" id="globalPropertyEditSection" parameters="propertyPrefix=blooddonationmanager.|excludePrefix=blooddonationmanager.started|hidePrefix=true" />
		</div>
		<script type="text/javascript" charset="utf-8">
			function showProp(){
				document.getElementById("properties").style.display="block";
			}
		</script> </li>
=======
<openmrs:require privilege="All Blood Bank" otherwise="/login.htm" redirect="/module/blooddonation/main.form" />
<ul>
  <!-- <li><a href="newIds.form">Pre-generated IDs</a> </li>
  <openmrs:hasPrivilege privilege="Manage Global Properties">-->
  <li> <a onclick="showProp()">Edit properties</a>
<div id="properties" style="display:none">
<openmrs:portlet url="globalProperties" id="globalPropertyEditSection" parameters="propertyPrefix=blooddonation.|excludePrefix=blooddonation.started|hidePrefix=true" />
</div>
<script type="text/javascript" charset="utf-8">
	function showProp(){
		document.getElementById("properties").style.display="block";
	}
</script> </li>
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706
	</openmrs:hasPrivilege>
</ul>


<%@ include file="/WEB-INF/template/footer.jsp"%>