<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Employee> internationalEmployeeList = Employee.getAllEmployeesOfCategory("International");
	Iterator<Employee> internationalEmployeeItr = internationalEmployeeList.iterator();
%>
<div>
	<table border="1" width="100%">
		<tr style="background:#eee;font-weight:bold;">
			<td colspan="8" align="center" style="font-size:12px">
				International Employee List
			</td>
		</tr>
		<tr style="background:#eee;font-weight:bold">
			<td>Ser.No</td>
			<td>Family Name</td>
			<td>First Name</td>
			<td>Middle Name</td>
			<td>Date of Birth</td>
			<td>Place of Birth</td>
			<td>Nationality At Birth</td>
			<td>View Detail</td>
		</tr>
		<%
			int ctr=1;
			while(internationalEmployeeItr.hasNext()){
				Employee employee = internationalEmployeeItr.next();
				%>
				<tr>
					<td><%=ctr++ %></td>
					<td><%=employee.getLastName() %></td>
					<td><%=employee.getFirstName() %></td>
					<td><%=employee.getMiddleName() %></td>
					<td><%=employee.getDateOfBirth() %></td>
					<td><%=employee.getPlaceOfBirth() %></td>
					<td><%=employee.getNationalityAtBirth() %></td>
					<td>
						<a href="#.jsp" onclick="showInternationalEmployeeDetail(<%=employee.getId() %>);">View more</a> |
						<a href="#.jsp" onclick="hideInternationalEmployeeDetail(<%=employee.getId() %>);">Hide Detail</a>
					</td>
				</tr>
				<tr>
					<td colspan="8">
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
	function showInternationalEmployeeDetail(employeeId){
		var divId = "internationalEmployeeDetailDiv"+employeeId;
		$('#'+divId).load('showinternationalemployeedetailform.jsp?employeeId='+employeeId);
	}
	
	function hideInternationalEmployeeDetail(employeeId){
		var divId = "internationalEmployeeDetailDiv"+employeeId;
		$('#'+divId).html('');
	}
</script>