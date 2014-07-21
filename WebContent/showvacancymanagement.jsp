<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>	
	<!-- Tabs --> 
	<h3 class="tit">Vacancy Management</h3> 

	<div class="tabs box"> 
		<ul> 
			<li><a href="#.jsp" id="addVacancyManagementLink"><span>Add Vacancy</span></a></li>
			<li><a href="#.jsp" id="viewVacanciesManagementLink"><span>View Vacancies</span></a></li> 
			<li><a href="#.jsp" id="editVacancyManagementLink"><span>Edit Vacancy</span></a></li> 
			<li><a href="#.jsp" id="deleteVacancyManagementLink"><span>Delete Vacancy</span></a></li> 
		</ul> 
	</div> <!-- /tabs -->			
	 
	 
	<div id="tabDetailDiv"> 			
		<p class="msg info">Click on the vacancy management tabs for manipulating vacancy based information</p>			
	</div>			
	
	<div class="fix"></div> 
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addVacancyManagementLink').click(function(){
			$('#tabDetailDiv').load('showaddvacancyform.jsp');
		});
		
		$('#viewVacanciesManagementLink').click(function(){
			$('#tabDetailDiv').load('showlistofvacancies.jsp');
		});
		
		$('#editVacancyManagementLink').click(function(){			
			$('#tabDetailDiv').load('showlistofvacanciesforedit.jsp');
		});
		
		$('#deleteVacancyManagementLink').click(function(){			
			$('#tabDetailDiv').load('showlistofvacanciesfordelete.jsp');
		});
	});
</script>
