<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div id="departmentRegistrationFormDiv">	
</div>
<!-- Now comes the tabs section mahder -->
<div>	
	<!-- Tabs --> 
			<h3 class="tit">Recruitment  Request Management</h3> 
 
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" id="addRecruitmentRequestLink"><span>Add Recruitment Request</span></a></li>
					<li><a href="#.jsp" id="viewRecruitmentRequestLink"><span>View Recruitment Requests</span></a></li> 
					<li><a href="#.jsp" id="editRecruitmentRequestLink"><span>Edit Recruitment Request</span></a></li> 
					<li><a href="#.jsp" id="deleteRecruitmentRequestLink"><span>Delete Recruitment Request</span></a></li> 
				</ul> 
			</div> <!-- /tabs -->			
			 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the recruitment request management tabs for manipulating recruitment request information</p>			
			</div>			
			
			<div class="fix"></div> 
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addRecruitmentRequestLink').click(function(){
			$('#tabDetailDiv').load('showaddrecruitmentrequestform.jsp');
		});
		
		$('#viewRecruitmentRequestLink').click(function(){
			$('#tabDetailDiv').load('showlistofrecruitmentrequestes.jsp');
		});
		
		$('#editRecruitmentRequestLink').click(function(){
			$('#tabDetailDiv').load('showlistofrecruitmentrequestesforedit.jsp');
		});
		
		$('#deleteRecruitmentRequestLink').click(function(){
			$('#tabDetailDiv').load('showlistofrecruitmentrequestesfordelete.jsp');
		});
	});
</script>