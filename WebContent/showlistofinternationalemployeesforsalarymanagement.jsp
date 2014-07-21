<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Employee> internationalEmployeeList = Employee.getAllEmployeesOfCategory("International");
	Iterator<Employee> internationalEmployeeItr = internationalEmployeeList.iterator();
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
			while(internationalEmployeeItr.hasNext()){
				Employee employee = internationalEmployeeItr.next();
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
								<a href="#.jsp" onclick="showSalaryManagementFormForThisInternationalEmployee(<%=employee.getId() %>);">Enter Salary</a>
								|
						<%
							}else{
						%>
								<a href="#.jsp" onclick="editSalaryInformationForThisInternationalEmployee(<%=employee.getId() %>);">Edit Salary</a>
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
	function showSalaryManagementFormForThisInternationalEmployee(employeeId){
		var divId = "internationalEmployeeDetailDiv"+employeeId;
		$('#'+divId).load('showsalarymanagementformforthisinternationalemployee.jsp?employeeId='+employeeId);
	}
	
	function editSalaryInformationForThisInternationalEmployee(employeeId){
		var divId = "internationalEmployeeDetailDiv"+employeeId;
		$('#'+divId).load('showeditfieldsofsalaryinformationforthisinternationalemployee.jsp?employeeId='+employeeId);
	}
	
	function hideSalaryManagementForThisEmployee(employeeId){
		var divId = "internationalEmployeeDetailDiv"+employeeId;
		$('#'+divId).html('');
	}
</script>