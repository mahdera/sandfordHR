<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>	
	<!-- Tabs --> 
	<h3 class="tit">Form Management</h3> 

	<div class="tabs box"> 
		<ul> 
			<li><a href="#.jsp" id="addFormManagementLink"><span>Add Form</span></a></li>
			<li><a href="#.jsp" id="viewFormsManagementLink"><span>View Forms</span></a></li> 
			<li><a href="#.jsp" id="editFormManagementLink"><span>Edit Form</span></a></li> 
			<li><a href="#.jsp" id="deleteFormManagementLink"><span>Delete Form</span></a></li> 
		</ul> 
	</div> <!-- /tabs -->			
	 
	 
	<div id="tabDetailDiv"> 			
		<p class="msg info">Click on the form management tabs for manipulating form based information</p>			
	</div>			
	
	<div class="fix"></div> 
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addFormManagementLink').click(function(){
			$('#tabDetailDiv').load('showaddformrecordselectorbar.jsp');
		});
		
		$('#viewFormsManagementLink').click(function(){
			$('#tabDetailDiv').load('showviewformrecordselectorbar.jsp');
		});
		
		$('#editFormManagementLink').click(function(){			
			$('#tabDetailDiv').load('showeditformrecordselectorbar.jsp');
		});
		
		$('#deleteFormManagementLink').click(function(){			
			$('#tabDetailDiv').load('showdeleteformrecordselectorbar.jsp');
		});
	});
</script>
