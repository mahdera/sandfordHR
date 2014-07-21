<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int fisId = Integer.parseInt(request.getParameter("fisId"));
	
	List<Employee> employeeList = Employee.getAllEmployeesOfFIS(fisId);
	Iterator<Employee> employeeItr = employeeList.iterator();	
%>
	<table border="0" width="100%">
		<tr>
			<th>Full Name</th>
			<th>Id Number</th>
			<th>Basic Salary</th>
			<th>Employee Type</th>
			<th>Position</th>
			<th>Education Level</th>
			<th>Pension Number</th>
		</tr>
		<%
		while(employeeItr.hasNext()){
			Employee emp = employeeItr.next();
			%>
			<tr>
				<td><%=emp.getFirstName()+" "+emp.getFatherName()+" "+emp.getGrandFatherName() %></td>
				<td><%=emp.getIdNumber() %></td>
				<td><%=emp.getBasicSalary() %></td>
				<td><%=EmployeeType.getEmployeeType(emp.getEmployeeTypeId()).getEmployeeType() %></td>
				<td><%=emp.getEmployeePosition() %></td>
				<td><%=EducationLevel.getEducationLevel(emp.getEducationLevelId()).getEducationLevel() %></td>
				<td><%=emp.getPensionNumber() %></td>
			</tr>
			<%
		}//end while loop
		%>
	</table>