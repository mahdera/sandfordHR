<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	List<DisciplineManagement> disciplineManagementList = DisciplineManagement.getAllDisciplineManagementForThisEmployee(employeeId);
	Iterator<DisciplineManagement> disciplineManagementItr = disciplineManagementList.iterator();
%>
<table border="1" width="100%">
	<tr>
		<th>Discipline Name</th>
		<th>Discipline Date</th>
		<th>Description</th>
		<th>Delete</th>
	</tr>
	<%
	while(disciplineManagementItr.hasNext()){
		DisciplineManagement disciplineManagement = disciplineManagementItr.next();
		%>
		<tr>
			<td><%=disciplineManagement.getDisciplineName() %></td>
			<td><%=disciplineManagement.getDisciplineDate() %></td>
			<td><%=disciplineManagement.getDescription() %></td>
			<td>
				<a href="#.jsp" onclick="deleteThisDisciplineManagement(<%=disciplineManagement.getId()%>);"><img src="design/delete.png" align="absmiddle" border="0"/></a>
			</td>
		</tr>
		<%
	}
	%>
</table>
<div id="disciplineManagementEditDiv"></div>
