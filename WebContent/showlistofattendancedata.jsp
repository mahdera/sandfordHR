<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int departmentId = Integer.parseInt(request.getParameter("departmentId"));
	List<Employee> employeeList = Employee.getAllEmployeesOfThisDepartment(departmentId);
	Iterator<Employee> employeeItr = employeeList.iterator();
%>
<table border="1" width="100%">
	<tr style="background:#eee;font-weight:bolder;">
		<td>Ser.No.</td>
		<td>First Name</td>
		<td>Middle Name</td>
		<td>Last Name</td>
		<td>Sex</td>
		<td>View Attendance Detail</td>		
	</tr>
	<%
		int ctr=1;
		while(employeeItr.hasNext()){
			Employee employee = employeeItr.next();						
			%>
			<tr>
				<td><%=ctr %></td>
				<td><%=employee.getFirstName() %></td>
				<td><%=employee.getMiddleName() %></td>
				<td><%=employee.getLastName() %></td>
				<td><%=employee.getSex() %></td>
				<td>
					<a href="#.jsp" onclick="showAttendanceDetailForEmployee(<%=employee.getId() %>);">View Detail</a> |
					<a href="#.jsp" onclick="hideAttendanceDetailForEmployee(<%=employee.getId() %>);">Hide Detail</a>
				</td>				
			</tr>
			<%
				String divId = "attendanceDetailDiv" + employee.getId();
			%>
			<tr>
				<td colspan="6">
					<div id="<%=divId%>"></div>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function showAttendanceDetailForEmployee(employeeId){
		var divId = "attendanceDetailDiv" + employeeId;
		$('#'+divId).load('showattendancedetailforemployee.jsp?employeeId='+employeeId);
	}
	
	function hideAttendanceDetailForEmployee(employeeId){
		var divId = "attendanceDetailDiv" + employeeId;
		$('#'+divId).html('');
	}
</script>