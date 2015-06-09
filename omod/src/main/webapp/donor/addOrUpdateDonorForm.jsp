<!-- Header & Include -->
<%@ include file="mainMenu.jsp"%>
<%@ include file="/includes/js_css.jsp" %>

<<<<<<< HEAD
<openmrs:require privilege="All Blood Bank" otherwise="/login.htm" redirect="/module/blooddonationmanager/main.form" />
=======
<openmrs:require privilege="All Blood Bank" otherwise="/login.htm" redirect="/module/blooddonation/main.form" />
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706

<br/>
<div id="wrapper">
    <div id="leftCol" style="float:left; min-width:500px">


        <form class="box" id="addDonorForm" method="post">
            <div class="boxHeader">Search Donor by Name</div>
            <div>
                <div>
<<<<<<< HEAD
                    <div style="margin-top:12px;"><spring:message code="blooddonationmanager.donor.name"/></div>
=======
                    <div style="margin-top:12px;"><spring:message code="blooddonation.donor.name"/></div>
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706
                    <div style="margin-top:12px;display: inline-table;"><input type="text" id="donorName" name="donorName" value="" onblur="capitalize()" style="min-width:600px;"/></div>
                    <input id="donId" name="donId" type="hidden" value="${donorIdentifier }"></input>
                </div>

<<<<<<< HEAD
                <div style="margin-top:12px;"><spring:message code="blooddonationmanager.donor.fatherhusbandname"/></div>
                <div style="margin-top:12px;display: inline-table;"><input type="text" id="fatherHusbandName" name="fatherHusbandName" value="" onblur="capitalize()" style="width:400px;"/></div><br/>
                <div style="margin-top:12px;display: inline-table;"><spring:message code="blooddonationmanager.patient.id"/>&nbsp;&nbsp;&nbsp;</div><div style="margin-top:12px;display: inline-table;"><b>${patientIdentifier }</b></div>
                <div style="display:none;">
                    <input id="patId" name="patId" type="hidden" value="${patientIdentifier }"></input>
                    <input id="donId" name="donId" type="hidden" value="${donorIdentifier }"></input>
                    <input id="existPat" name="existPat" type="hidden" value=""></input>
                    <input id="existId" name="existId" type="hidden" value=""></input>
                </div>
            </div>
            <div>
                <div style="margin-top:12px;margin-bottom:2px;display: inline-table;"><spring:message code="blooddonationmanager.donor.id"/>&nbsp;&nbsp;&nbsp;</div><div id="donIdShow" style="margin-top:12px;display: inline-table;"><b>${donorIdentifier }</b></div>
                <div style="margin-top:12px;display: inline-table;"><input  style="margin-top:12px;display: inline-table;" type="checkbox" name="preregistered" id="preregistered" onchange="openIdField();" value="" ><spring:message code="blooddonationmanager.preregistered.id"/></div>
                <div style="margin-top:12px; display:none;" id="idField"><input  style="display: inline-table;margin-top:12px;" type="text" id="donorPrepId" name="donorPrepId" value="${donorIdPrefix}" onblur="invalidate();" style="width:300px;"/>&nbsp;&nbsp;&nbsp;
                    <input type="button" id="isValidDonorId" name="isValidDonorId" value="Validate ID"/>
                    <div style="display: inline-table;margin-top:12px;" id="valid" name="valid"></div></div>
            </div>
            <div>
                <div style="display: inline-table;margin-top:12px;"><spring:message code="blooddonationmanager.donor.gender"/></div>
                <div style="display: inline-table;margin-top:12px;"><select name="gender"><option id="M" value="M">Male</option><option id="F" value="F">Female</option></select></div>

                <div style="display: inline-table;margin-top:12px;"><spring:message code="blooddonationmanager.donor.dob"/></div>
                <div style="display: inline-table;margin-top:12px;"><input type="text" id="donorDob" name="donorDob" value=""  onblur="magicDate(this);" /></div><div style="display: inline-table;margin-top:12px;" id="dateLongField">&nbsp;</div>
                <input  style="margin-top:12px;display: inline-table;" type="checkbox" name="dobEstimated" id="dobEstimated" value="yes" ><spring:message code="blooddonationmanager.dob.etimated"/><div id="dateFieldMsg">dd/mm/yyyy</div>
            </div>
            <div>
                <div style="margin-top:12px;"><spring:message code="blooddonationmanager.donor.address1"/></div>
                <div><input type="text" id="donorAddress1" name="donorAddress1" value="" onblur="validateForm();" style="width:600px;"/></div>

                <div style="margin-top:12px;"><spring:message code="blooddonationmanager.donor.address2"/></div>
                <div><input type="text" id="donorAddress2" name="donorAddress2" value=""  style="width:600px;"/></div>
                <div style="display: none;">
                    <div><spring:message code="blooddonationmanager.donor.cityVillage"/></div>
                    <div><input type="text" id="cityVillage" name="cityVillage" value="" style="width:600px;"/></div>
                    <div><spring:message code="blooddonationmanager.donor.neighborhoodCell"/></div>
                    <div><input type="text" id="neighborhoodCell" name="neighborhoodCell" value="" style="width:600px;"/></div>
                    <div><spring:message code="blooddonationmanager.donor.countyDistrict"/></div>
                    <div><input type="text" id="countyDistrict" name="countyDistrict" value="" style="width:600px;"/></div>
                    <div><spring:message code="blooddonationmanager.donor.townshipDivision"/></div>
                    <div><input type="text" id="townshipDivision" name="townshipDivision" value="" style="width:600px;"/></div>
                    <div><spring:message code="blooddonationmanager.donor.region"/></div>
                    <div><input type="text" id="region" name="region" value="" style="width:600px;"/></div>
                    <div><spring:message code="blooddonationmanager.donor.subregion"/></div>
                    <div><input type="text" id="subregion" name="subregion" value="" style="width:600px;"/></div>
                    <div><spring:message code="blooddonationmanager.donor.stateProvince"/></div>
                    <div><input type="text" id="stateProvince" name="stateProvince" value="" style="width:600px;"/></div>
                    <div><spring:message code="blooddonationmanager.donor.country"/></div>
                    <div><input type="text" id="country" name="country" value="" style="width:600px;"/></div>
                    <div><spring:message code="blooddonationmanager.donor.postalCode"/></div>
                    <div><input type="text" id="postalCode" name="postalCode" value="" style="width:600px;"/></div>
                </div>
            </div>
            <div> <input  style="margin-top:12px;" id="saveButton" name="saveButton" disabled="true" type="submit" value="<spring:message code="general.save"/>"/> <b id="savemessage" style="display:none; color:red">Already existing!</b> </div>
        </form>


    </div>
</div>
<!--Right colstart -->
<div id="rightCol" style="float:right; width:700px">
    <div class="box" style="margin-left:4px;">
        <span class="boxHeader">Matching patients</span>
        <div id="display" name="display"></div>
    </div>
</div>
</div>
=======
				<div style="margin-top:12px;"><spring:message code="blooddonation.donor.fatherhusbandname"/></div>
				<div style="margin-top:12px;display: inline-table;"><input type="text" id="fatherHusbandName" name="fatherHusbandName" value="" onblur="capitalize()" style="width:400px;"/></div><br/>
				<div style="margin-top:12px;display: inline-table;"><spring:message code="blooddonation.patient.id"/>&nbsp;&nbsp;&nbsp;</div><div style="margin-top:12px;display: inline-table;"><b>${patientIdentifier }</b></div>
				<div style="display:none;">
					<input id="patId" name="patId" type="hidden" value="${patientIdentifier }"></input>
					<input id="donId" name="donId" type="hidden" value="${donorIdentifier }"></input>
					<input id="existPat" name="existPat" type="hidden" value=""></input>
					<input id="existId" name="existId" type="hidden" value=""></input>
				</div>
			</div>
			<div>
				<div style="margin-top:12px;margin-bottom:2px;display: inline-table;"><spring:message code="blooddonation.donor.id"/>&nbsp;&nbsp;&nbsp;</div><div id="donIdShow" style="margin-top:12px;display: inline-table;"><b>${donorIdentifier }</b></div>
				<div style="margin-top:12px;display: inline-table;"><input  style="margin-top:12px;display: inline-table;" type="checkbox" name="preregistered" id="preregistered" onchange="openIdField();" value="" ><spring:message code="blooddonation.preregistered.id"/></div>
				<div style="margin-top:12px; display:none;" id="idField"><input  style="display: inline-table;margin-top:12px;" type="text" id="donorPrepId" name="donorPrepId" value="${donorIdPrefix}" onblur="invalidate();" style="width:300px;"/>&nbsp;&nbsp;&nbsp;
				<input type="button" id="isValidDonorId" name="isValidDonorId" value="Validate ID"/>
				<div style="display: inline-table;margin-top:12px;" id="valid" name="valid"></div></div>
			</div>
			<div>
				<div style="display: inline-table;margin-top:12px;"><spring:message code="blooddonation.donor.gender"/></div>
				<div style="display: inline-table;margin-top:12px;"><select name="gender"><option id="M" value="M">Male</option><option id="F" value="F">Female</option></select></div>

				<div style="display: inline-table;margin-top:12px;"><spring:message code="blooddonation.donor.dob"/></div>
				<div style="display: inline-table;margin-top:12px;"><input type="text" id="donorDob" name="donorDob" value=""  onblur="magicDate(this);" /></div><div style="display: inline-table;margin-top:12px;" id="dateLongField">&nbsp;</div>
				<input  style="margin-top:12px;display: inline-table;" type="checkbox" name="dobEstimated" id="dobEstimated" value="yes" ><spring:message code="blooddonation.dob.etimated"/><div id="dateFieldMsg">dd/mm/yyyy</div>
			</div>
			<div>
				<div style="margin-top:12px;"><spring:message code="blooddonation.donor.address1"/></div>
				<div><input type="text" id="donorAddress1" name="donorAddress1" value="" onblur="validateForm();" style="width:600px;"/></div>

				 <div style="margin-top:12px;"><spring:message code="blooddonation.donor.address2"/></div>
				<div><input type="text" id="donorAddress2" name="donorAddress2" value=""  style="width:600px;"/></div>
				<div style="display: none;">
					<div><spring:message code="blooddonation.donor.cityVillage"/></div>
					<div><input type="text" id="cityVillage" name="cityVillage" value="" style="width:600px;"/></div>
					<div><spring:message code="blooddonation.donor.neighborhoodCell"/></div>
					<div><input type="text" id="neighborhoodCell" name="neighborhoodCell" value="" style="width:600px;"/></div>
					<div><spring:message code="blooddonation.donor.countyDistrict"/></div>
					<div><input type="text" id="countyDistrict" name="countyDistrict" value="" style="width:600px;"/></div>
					<div><spring:message code="blooddonation.donor.townshipDivision"/></div>
					<div><input type="text" id="townshipDivision" name="townshipDivision" value="" style="width:600px;"/></div>
					<div><spring:message code="blooddonation.donor.region"/></div>
					<div><input type="text" id="region" name="region" value="" style="width:600px;"/></div>
					<div><spring:message code="blooddonation.donor.subregion"/></div>
					<div><input type="text" id="subregion" name="subregion" value="" style="width:600px;"/></div>
					<div><spring:message code="blooddonation.donor.stateProvince"/></div>
					<div><input type="text" id="stateProvince" name="stateProvince" value="" style="width:600px;"/></div>
					<div><spring:message code="blooddonation.donor.country"/></div>
					<div><input type="text" id="country" name="country" value="" style="width:600px;"/></div>
					<div><spring:message code="blooddonation.donor.postalCode"/></div>
					<div><input type="text" id="postalCode" name="postalCode" value="" style="width:600px;"/></div>	
				</div>
			</div>
			<div> <input  style="margin-top:12px;" id="saveButton" name="saveButton" disabled="true" type="submit" value="<spring:message code="general.save"/>"/> <b id="savemessage" style="display:none; color:red">Already existing!</b> </div>
		</form>


            </div>
    </div>
    <!--Right colstart -->
    <div id="rightCol" style="float:right; width:700px">
        <div class="box" style="margin-left:4px;">
            <span class="boxHeader">Matching patients</span>
            <div id="display" name="display"></div>
        </div>
    </div>
</div>
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706
<script>
    jQuery(document).ready(function(){

        jQuery("#donorName").focus();


        jQuery("#donorDob").datepicker({
            showOn: 'button',
<<<<<<< HEAD
            buttonImage: '${pageContext.request.contextPath}/moduleResources/blooddonationmanagerManager/styles/images/calendar.gif',
=======
            buttonImage: '${pageContext.request.contextPath}/moduleResources/blooddonation/styles/images/calendar.gif',
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706
            buttonImageOnly: true,
            changeMonth: true,
            changeYear: true,
            yearRange: '-100:+0',
            maxDate: '+0D',
            dateFormat: 'dd/mm/yy',
            constrainInput: false,
            onClose: function() { jQuery("#donorDob").focus();jQuery("#donorAddress1").focus() }
        });

        jQuery.ajaxSetup ({
            cache: false
        });

        //jQuery('#donorDob').datepicker({yearRange:'c-30:c+30', dateFormat: 'dd/mm/yy', changeMonth: true, changeYear: true});
    });

    // show prep id filed
    var visible = false;

    function openIdField(){
        if(!document.getElementById("preregistered").checked){
            jQuery('#idField').hide();
            visible = false;
        }else{
            jQuery('#idField').css("display", "inline-table");
            jQuery('#donorPrepId').css("width", "300px");
            visible=true;
            validateForm();
        }
    }

    //ajax images to show
<<<<<<< HEAD
    var ajax_load = "<img src='${pageContext.request.contextPath}/moduleResources/blooddonationmanagerManager/scripts/jquery/css/images/ui-anim_basic_16x16.gif' alt='loading...' />";
    var ajax_ok = "<img src='${pageContext.request.contextPath}/moduleResources/blooddonationmanagerManager/scripts/jquery/css/images/right-icon14.gif' alt='loading...' />";
    var ajax_wrong = "<img src='${pageContext.request.contextPath}/moduleResources/blooddonationmanagerManager/scripts/jquery/css/images/wrong-icon5.gif' alt='loading...' />";
=======
    var ajax_load = "<img src='${pageContext.request.contextPath}/moduleResources/blooddonation/scripts/jquery/css/images/ui-anim_basic_16x16.gif' alt='loading...' />";
    var ajax_ok = "<img src='${pageContext.request.contextPath}/moduleResources/blooddonation/scripts/jquery/css/images/right-icon14.gif' alt='loading...' />";
    var ajax_wrong = "<img src='${pageContext.request.contextPath}/moduleResources/blooddonation/scripts/jquery/css/images/wrong-icon5.gif' alt='loading...' />";
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706

    //  ajax call for patient name
    var loadUrl = "patient/findDonorByNameOrId.form";

    jQuery("#donorName").keyup(function(){
        if(jQuery("#donorName").val().length>=3){
            jQuery("#display").html(ajax_load);
            jQuery.get(
                    loadUrl,
                    {donorName: jQuery("#donorName").val()},
                    function(responseText){
                        jQuery("#display").html(responseText);
                        validateForm();
                    },
                    "html"
            );
        }else{
            jQuery("#display").html("");
        }
    });

    //ajax call for preprinted donor id validation

    var loadUrl2 = "validateDonorId.form";

    jQuery("#isValidDonorId").click(function(){

        jQuery("#valid").html(ajax_load);
        jQuery.get(
                loadUrl2,
                {donorPrepId: jQuery("#donorPrepId").val()},
                function(responseText){
                    jQuery("#existId").attr('value',responseText);
                    validateId();
                    validateForm();
                },
                "html"
        );

    });

    function validateId(){
        if(jQuery("#existId").attr('value')=="yes"){
            var newVal = jQuery("#donorPrepId").val();
            //jQuery("#donId").attr('value',newVal);
            jQuery("#donIdShow").html(newVal);

            jQuery("#valid").html(ajax_ok);
        }else{
            jQuery("#valid").html(ajax_wrong);
        }
    }

    function invalidate(){
        jQuery("#existId").attr('value',"");
        jQuery("#valid").html(ajax_wrong);
        validateForm();
    }

    //Makes every word start with caps.
    function capitalize() {
        var fullname = jQuery('#donorName').val();

        var newVal = '';
        var names = (jQuery.trim(fullname)).split(' ');
        for(var c=0; c < names.length; c++) {
            if(c<names.length-1){
                newVal += names[c].substring(0,1).toUpperCase() +
                        names[c].substring(1,names[c].length) + ' ';
            }else{
                newVal += names[c].substring(0,1).toUpperCase() +
                        names[c].substring(1,names[c].length) ;
            }
        }
        jQuery('#donorName').val(newVal);
        validateForm();
    }

    // Validates form by checking if all required fields are completed correctly
    function validateForm(){

        if(jQuery("#donorName").attr('value').length > 50){
            alert('Please check the length of donor name. Donor name should be less than 50');
            document.getElementById("saveButton").disabled = true;
            return;
        }
        var name = jQuery("#donorName").attr('value');
        var fatherhusband = jQuery("#fatherHusbandName").attr('value');
        var patidentifier = jQuery("#patId").attr('value');
        var donidentifier = jQuery("#donId").attr('value');
        var birthdate = jQuery("#donorDob").attr('value');
        var address = jQuery("#d<!-- Header & Include -->
<<<<<<< HEAD
        <%@ include file="/WEB-INF/template/include.jsp"%>
        <%@ include file="/WEB-INF/template/header.jsp"%>

        <script type="text/javascript" src="${pageContext.request.contextPath}/moduleResources/blooddonationmanagerManager/scripts/jquery/js/jquery-1.4.2.min.js"></script>

<openmrs:require privilege="Add Donor" otherwise="/login.htm" redirect="/module/blooddonationmanager/main.form" />
=======
<%@ include file="/WEB-INF/template/include.jsp"%>
<%@ include file="/WEB-INF/template/header.jsp"%>

<script type="text/javascript" src="${pageContext.request.contextPath}/moduleResources/blooddonation/scripts/jquery/js/jquery-1.4.2.min.js"></script>

<openmrs:require privilege="Add Donor" otherwise="/login.htm" redirect="/module/blooddonation/main.form" />
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706

donor reg

<div id="display" name="display"></div>
<h2>
<<<<<<< HEAD
    <spring:message code="blooddonationmanager.add.donor" />
=======
    <spring:message code="blooddonation.add.donor" />
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706
</h2>
<br/>
<form class="box" id="addDonorForm" method="post">
    <table >
        <tr>
<<<<<<< HEAD
            <td><spring:message code="blooddonationmanager.donor.name"/></td>
=======
            <td><spring:message code="blooddonation.donor.name"/></td>
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706
            <td><input type="text" id="donorName" name="donorName" value=""/></td>
        </tr>
    </table>
</form>

<br/>
<span class="boxHeader">List of Donors</span>


<script>
    jQuery(document).ready(function(){

        jQuery.ajaxSetup ({
            cache: false
        });

        jQuery("#donorName").focus();
    });

<<<<<<< HEAD
    var ajax_load = "<img src='${pageContext.request.contextPath}/moduleResources/blooddonationmanagerManager/scripts/jquery/css/images/ui-anim_basic_16x16.gif' alt='loading...' />";
=======
    var ajax_load = "<img src='${pageContext.request.contextPath}/moduleResources/blooddonation/scripts/jquery/css/images/ui-anim_basic_16x16.gif' alt='loading...' />";
>>>>>>> a9402d46f00383557e5edc09e4e7b2c64eb23706

    //  load() functions
    var loadUrl = "findDonorByNameOrId.form";
    //     jQuery("#donorName").keyup(function(){
    //         if(jQuery("#donorName").val().length>=3)
    //         jQuery("#display").html(ajax_load).load(loadUrl, {donorName: jQuery("#donorName").val()});
    //     });

    //  jQuery.post()
    jQuery("#donorName").keyup(function(){
        if(jQuery("#donorName").val().length>=3){
            jQuery("#display").html(ajax_load);
            jQuery.post(
                    loadUrl,
                    {donorName: jQuery("#donorName").val()},
                    function(responseText){
                        jQuery("#display").html(responseText);
                    },
                    "html"
            );
        }
    });

</script>

<%@ include file="/WEB-INF/template/footer.jsp"%>
<%--
onorAddress1").attr('value');
        var idValid = jQuery("#existId").attr('value');
        var noPatients = jQuery('#display').is(':empty');

        var dataEnteredisValid = function() {
            return ( name!="" && fatherhusband!="" && patidentifier!="" && patidentifier!=undefined && donidentifier!="" && donidentifier!=undefined && birthdate!="" && address!="");
        }

        var dataEnteredisValid2 = function() {
            return ( name!="" && idValid=="yes" && noPatients && patidentifier!="" && patidentifier!=undefined && donidentifier!="" && donidentifier!=undefined && birthdate!="" && address!="");
        }

        if(jQuery("#preregistered").attr('checked') == false){
            if(dataEnteredisValid()){
                document.getElementById("saveButton").disabled = false;
                if(!noPatients){
                    document.getElementById("savemessage").style.display="block";
                    document.getElementById("saveButton").value="Save anyway";
                }
            }
            else{
                document.getElementById("saveButton").disabled = true;
            }
        }else{
            if(dataEnteredisValid2()){
                document.getElementById("saveButton").disabled = false;
            }
            else{
                document.getElementById("saveButton").disabled = true;
            }
        }
    }

</script>--%>