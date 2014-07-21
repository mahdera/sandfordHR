<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<table border="1" width="100%">
	<tr>
		<td>Please Select Employee:</td>
		<td>
			<select name="slctemp" id="slctemp" style="width:100%" onchange="showTheDisciplineOfThisEmployeeForDelete(this.value);">
				<option value="" selected="selected">--Select--</option>
				<%
					List<Employee> employeeList = Employee.getAllEmployees();
					Iterator<Employee> employeeItr = employeeList.iterator();
					while(employeeItr.hasNext()){
						Employee emp = employeeItr.next();
						String empFullName = emp.getFirstName()+" "+emp.getFatherName()+" "+emp.getGrandFatherName();
						%>
						<option value="<%=emp.getId()%> "><%=empFullName %></option>
						<%
					}//end while loop
				%>
			</select>
		</td>
	</tr>	
</table>