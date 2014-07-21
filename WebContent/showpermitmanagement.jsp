<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>	
	<!-- Tabs --> 
	<h3 class="tit">Permit Management</h3> 

	<div class="tabs box"> 
		<ul> 
			<li><a href="#.jsp" id="addPermitManagementLink"><span>Add Permit</span></a></li>
			<li><a href="#.jsp" id="viewPermitsManagementLink"><span>View Permits</span></a></li> 
			<li><a href="#.jsp" id="editPermitManagementLink"><span>Edit Permit</span></a></li> 
			<li><a href="#.jsp" id="deletePermitManagementLink"><span>Delete Permit</span></a></li>
			<li><a href="#.jsp" id="permitManagementAlertLookupLink"><span>Permit Alert Lookup</span></a></li> 
		</ul> 
	</div> <!-- /tabs -->			
	 
	 
	<div id="tabDetailDiv"> 			
		<p class="msg info">Click on the permit management tabs for manipulating permit information</p>			
	</div>			
	
	<div class="fix"></div> 
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addPermitManagementLink').click(function(){
			$('#tabDetailDiv').load('showaddpermitmanagementform.jsp');
		});
		
		$('#viewPermitsManagementLink').click(function(){
			$('#tabDetailDiv').load('showlistofpermitmanagements.jsp');
		});
		
		$('#editPermitManagementLink').click(function(){			
			$('#tabDetailDiv').load('showlistofpermitmanagementsforedit.jsp');
		});
		
		$('#deletePermitManagementLink').click(function(){			
			$('#tabDetailDiv').load('showlistofpermitmanagementsfordelete.jsp');
		});
		
		$('#permitManagementAlertLookupLink').click(function(){
			$('#tabDetailDiv').load('showpermitmanagementalertlookupform.jsp');
		});
	});//end document.ready function
</script>
