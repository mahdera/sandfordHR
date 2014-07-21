<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Vacancy> vacancyList = Vacancy.getAllVacancies();
	Iterator<Vacancy> vacancyItr = vacancyList.iterator();
%>
<table border="1" width="100%">
	<tr style="background:#eee;font-weight:bolder">
		<td>Ser.No.</td>
		<td>Job Title</td>
		<td>Name</td>
		<td>Location</td>
		<td>Sub Unit</td>
		<td>Hiring Manager</td>
		<td>Number of Positions</td>
		<td>Description</td>		
	</tr>
	<%
		int ctr=1;
		while(vacancyItr.hasNext()){
			Vacancy vacancy = vacancyItr.next();
			%>
			<tr>
				<td><%=ctr %></td>
				<td><%=vacancy.getJobTitle() %></td>
				<td><%=vacancy.getName() %></td>
				<td><%=vacancy.getLocation() %></td>
				<td><%=vacancy.getSubUnit() %></td>
				<td><%=vacancy.getHiringManager() %></td>
				<td><%=vacancy.getNumberOfPositions() %></td>
				<td><%=vacancy.getDescription() %></td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>