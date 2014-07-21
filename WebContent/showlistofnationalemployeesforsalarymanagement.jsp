<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Employee> nationalEmployeeList = Employee.getAllEmployeesOfCategory("National");
	Iterator<Employee> nationalEmployeeItr = nationalEmployeeList.iterator();
%>
<div>
	<table border="1" width="100%">
		<tr style="background:#eee;font-weight:bold;">
			<td colspan="7" align="center" style="font-size:12px">
				International Employee List
			</td>
		</tr>
		<tr style="background:#eee;font-weight:bold">
			<td>Family Name</td>
			<td>First Name</td>
			<td>Middle Name</td>
			<td>Date of Birth</td>
			<td>Place of Birth</td>
			<td>Nationality At Birth</td>
			<td>Manage Salary</td>
		</tr>
		<%
			while(nationalEmployeeItr.hasNext()){
				Employee employee = nationalEmployeeItr.next();
				%>
				<tr>
					<td><%=employee.getLastName() %></td>
					<td><%=employee.getFirstName() %></td>
					<td><%=employee.getMiddleName() %></td>
					<td><%=employee.getDateOfBirth() %></td>
					<td><%=employee.getPlaceOfBirth() %></td>
					<td><%=employee.getNationalityAtBirth() %></td>
					<td>
						<%
							EmployeeSalary employeeSalary = EmployeeSalary.getEmployeeSalaryForThisEmployee(employee.getId());
							if(employeeSalary == null){
						%>
								<a href="#.jsp" onclick="showSalaryManagementFormForThisEmployee(<%=employee.getId() %>);">Enter Salary</a>
								|
						<%
							}else{
						%>
								<a href="#.jsp" onclick="editSalaryInformationForThisEmployee(<%=employee.getId() %>);">Edit Salary</a>
								|
						<%
							}
						%>						
						<a href="#.jsp" onclick="hideSalaryManagementForThisEmployee(<%=employee.getId() %>);">Hide</a>
					</td>
				</tr>
				<tr>
					<td colspan="7">
						<%
							String divId = "internationalEmployeeDetailDiv" + employee.getId();
						%>
						<div id="<%=divId %>"></div>
					</td>
				</tr>
				<%
			}//end while loop
		%>
	</table>
</div>
<script type="text/javascript">
	function showSalaryManagementFormForThisEmployee(employeeId){
		var divId = "internationalEmployeeDetailDiv"+employeeId;
		$('#'+divId).load('showsalarymanagementformforthisemployee.jsp?employeeId='+employeeId);
	}
	
	function editSalaryInformationForThisEmployee(employeeId){
		var divId = "internationalEmployeeDetailDiv"+employeeId;
		$('#'+divId).load('showeditfieldsofsalaryinformationforthisemployee.jsp?employeeId='+employeeId);
	}
	
	function hideSalaryManagementForThisEmployee(employeeId){
		var divId = "internationalEmployeeDetailDiv"+employeeId;
		$('#'+divId).html('');
	}
</script>