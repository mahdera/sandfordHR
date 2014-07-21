<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
		<%
			Account account = (Account) session.getAttribute("account");
			String functionalityName = "employeeManagement";
			Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
			
			Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
			if(role.isWritable()){
		%>
			<fieldset>
				<legend>Register Employee</legend>
					<div id="employeeRegistrationFormDiv"></div>
			</fieldset>
		<%
			}else{
				out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
			}
		%>		
</div>
<!-- Now comes the tabs section mahder -->
<div id="employeeSaveDiv"></div>
<div>	
	<!-- Tabs --> 
			<h3 class="tit">Employee Details Tab</h3> 
 
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" id="addInternationalEmployeeLink"><span>New International Employee</span></a></li>
					<li><a href="#.jsp" id="addNationalEmployeeLink"><span>New National Employee</span></a></li>
					<li><a href="#.jsp" id="viewEmployeeLink"><span>View Employee</span></a></li> 
					<li><a href="#.jsp" id="editEmployeeLink"><span>Edit Employee</span></a></li> 
					<li><a href="#.jsp" id="deleteEmployeeLink"><span>Delete Employee</span></a></li>
					<li><a href="#.jsp" id="employeeSalaryManagementLink"><span>Salary Management</span></a></li> 
				</ul> 
			</div> <!-- /tabs --> 
			
			<h3 class="tit" style="border:1px solid #CCCCCC;">
				<%-- <%@include file="employeesortbar.jsp" %> --%>
			</h3> 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the employee unit details tab for manipulating employee information</p>			
			</div>			
			
			<div class="fix"></div> 
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addNationalEmployeeLink').click(function(){
			$('#employeeRegistrationFormDiv').load('showemployeeregistrationform.jsp');
		});
		
		$('#addInternationalEmployeeLink').click(function(){
			$('#employeeRegistrationFormDiv').load('showinternationalemployeeregistrationform.jsp');
		});
		
		$('#viewEmployeeLink').click(function(){
			$('#tabDetailDiv').load('showemployeeselectorbarforlistingemployees.jsp');
		});
		
		$('#editEmployeeLink').click(function(){
			$('#tabDetailDiv').load('showemployeeselectorbarforlistingemployeesforedit.jsp');
		});
		
		$('#deleteEmployeeLink').click(function(){
			$('#tabDetailDiv').load('showemployeeselectorbarforlistingemployeesfordelete.jsp');
		});
		
		$('#employeeSalaryManagementLink').click(function(){
			$('#tabDetailDiv').load('showemployeeselectorbarforlistingemployeesforsalarymanagement.jsp');
		});
	});
</script>