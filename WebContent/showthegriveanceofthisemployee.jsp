<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	List<GriveanceManagement> griveanceManagementList = GriveanceManagement.getAllGriveanceManagementsForThisEmployee(employeeId);
	Iterator<GriveanceManagement> griveanceManagementItr = griveanceManagementList.iterator();
%>
<table border="1" width="100%">
	<tr>
		<th>Subject</th>
		<th>Description</th>
		<th>Griveance Date</th>
	</tr>
	<%
	while(griveanceManagementItr.hasNext()){
		GriveanceManagement griveanceManagement = griveanceManagementItr.next();
		%>
		<tr>
			<td><%=griveanceManagement.getSubject() %></td>
			<td><%=griveanceManagement.getDescription() %></td>
			<td><%=griveanceManagement.getGriveanceDate() %></td>
		</tr>
		<%
	}
	%>
</table>
