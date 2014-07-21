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
		<td>Edit</td>
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
				<td>
					<a href="#.jsp" onclick="showEditFieldsOfVacancy(<%=vacancy.getId() %>);">Edit</a>
					|
					<a href="#.jsp" onclick="hideDetailsOfThisVacancy(<%=vacancy.getId() %>);">Hide</a>
				</td>
			</tr>
			<%
				String divId = "vacancyDetailDiv" + vacancy.getId();
			%>
			<tr>
				<td colspan="9">
					<div id="<%=divId %>"></div>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function showEditFieldsOfVacancy(vacancyId){
		var divId = "vacancyDetailDiv" + vacancyId;
		$('#'+divId).load('showeditfieldsofvacancy.jsp?vacancyId='+vacancyId);
	}
	
	function hideDetailsOfThisVacancy(vacancyId){
		var divId = "vacancyDetailDiv" + vacancyId;
		$('#'+divId).html('');
	}
</script>