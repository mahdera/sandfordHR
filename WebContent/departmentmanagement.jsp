<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div id="departmentRegistrationFormDiv">	
</div>
<!-- Now comes the tabs section mahder -->
<div>	
	<!-- Tabs --> 
			<h3 class="tit">Department / Unit Details Tab</h3> 
 
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" onclick="showAddDepartmentForm();"><span>Add Department</span></a></li>
					<li><a href="#.jsp" onclick="showListOfDepartments();"><span>View Departments</span></a></li> 
					<li><a href="#.jsp" onclick="showListOfDepartmentsForEdit();"><span>Edit Department</span></a></li> 
					<li><a href="#.jsp" onclick="showListOfDepartmentsForDelete();"><span>Delete Department</span></a></li> 
				</ul> 
			</div> <!-- /tabs -->			
			 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the department details tab for manipulating academic units</p>			
			</div>			
			
			<div class="fix"></div> 
</div>
