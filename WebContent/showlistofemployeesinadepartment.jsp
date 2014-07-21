<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	int departmentId = Integer.parseInt(request.getParameter("departmentId"));
	//now get all employees in this particular department
	List<Employee> employeeList = Employee.getAllEmployeesOfThisDepartment(departmentId);
	Iterator<Employee> employeeItr = employeeList.iterator();
%>
<div id="printReportDiv">
<table border="1" width="100%" style="border: 1px solid #2779aa" rules="all">
	<tr style="background:#eee;font-weight:bolder">
		<td>Ser.No</td>
		<td>Id Number</td>
		<td>Employee</td>
		<td>Sex</td>
		<td>Nationality</td>
		<td>Marital Status</td>
		<td>Date of Birth</td>
	</tr>
	<%
		int ctr=1;
		while(employeeItr.hasNext()){
			Employee employee = employeeItr.next();
			String fullName = employee.getFirstName()+" "+employee.getLastName();
			%>
				<tr>
					<td><%=ctr %></td>
					<td><%=employee.getEmployeeIdNumber() %></td>
					<td><%=fullName %></td>
					<td><%=employee.getSex() %></td>
					<td><%=employee.getPresentNationality() %></td>
					<td><%=employee.getMaritalStatus() %></td>
					<td><%=employee.getDateOfBirth() %></td>
				</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
</div>
<table border="0" width="100%">
	<tr>
		<td align="right">
			<a href="#.jsp" onclick="printDiv('printReportDiv')"><img src="images/printer.jpg" align="absmiddle"/> Print</a>
		</td>
	</tr>
</table>
<script type="text/javascript">
	$(document).ready(function(){
		$('#loadingDiv').hide();
	});//end document.ready function
</script>