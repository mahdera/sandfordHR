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
				National Employee List
			</td>
		</tr>
		<tr style="background:#eee;font-weight:bold">
			<td>Family Name</td>
			<td>First Name</td>
			<td>Middle Name</td>
			<td>Date of Birth</td>
			<td>Place of Birth</td>
			<td>Nationality At Birth</td>
			<td>Edit Detail</td>
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
						<a href="#.jsp" onclick="showNationalEmployeeDetailForEdit(<%=employee.getId() %>);">Edit Detail</a> |
						<a href="#.jsp" onclick="hideNationalEmployeeDetailForEdit(<%=employee.getId() %>);">Hide Detail</a>
					</td>
				</tr>
				<tr>
					<td colspan="7">
						<%
							String divId = "nationalEmployeeDetailDiv" + employee.getId();
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
	function showNationalEmployeeDetailForEdit(employeeId){
		var divId = "nationalEmployeeDetailDiv"+employeeId;
		$('#'+divId).load('shownationalemployeedetailformforedit.jsp?employeeId='+employeeId);
	}
	
	function hideNationalEmployeeDetailForEdit(employeeId){
		var divId = "nationalEmployeeDetailDiv"+employeeId;
		$('#'+divId).html('');
	}
</script>