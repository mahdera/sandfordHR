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
		<th>Delete</th>
	</tr>
	<%
	while(griveanceManagementItr.hasNext()){
		GriveanceManagement griveanceManagement = griveanceManagementItr.next();
		%>
		<tr>
			<td><%=griveanceManagement.getSubject() %></td>
			<td><%=griveanceManagement.getDescription() %></td>
			<td><%=griveanceManagement.getGriveanceDate() %></td>
			<td>
				<a href="#.jsp" onclick="deleteThisGriveanceManagement(<%=griveanceManagement.getId()%>);"><img src="design/delete.png" align="absmiddle" border="0"/></a>
			</td>
		</tr>
		<%
	}
	%>
</table>
<div id="griveanceManagementEditDiv"></div>
