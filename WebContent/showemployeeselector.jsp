<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	String rptType = request.getParameter("rptType");	
	List<Employee> employeeList = Employee.getAllEmployees();
	Iterator<Employee> employeeItr = employeeList.iterator();
%>
<table border="0" width="100%">
	<tr style="background:#eee;font-weight:bold">
		<td>Select An Employee:</td>
		<td>
			<select name="slctemployee" id="slctemployee" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<%
					while(employeeItr.hasNext()){
						Employee employee = employeeItr.next();
						%>
						<option value="<%=employee.getId() %>"><%=employee.getFirstName() %> <%=employee.getLastName() %></option>
						<%
					}//end while loop
				%>
			</select>
		</td>
		<td>
			<input type="button" value="Show Profile"/>		
		</td>
	</tr>
</table>