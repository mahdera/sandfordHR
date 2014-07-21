<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	List<ExperienceCriteriaValueList> expList = ExperienceCriteriaValueList.getAllExperienceCriteriaListForVacancy(vacancyId);
	Iterator<ExperienceCriteriaValueList> expItr = expList.iterator();
%>
<table border="0" width="100%">
	<tr>
		<th>Vacancy</th>
		<th>Minimum Number of Experience Year</th>
		<th>Point</th>
		<th>Edit</th>
	</tr>
	<%
		int ctr = 1;
		while(expItr.hasNext()){
			ExperienceCriteriaValueList exp = expItr.next();
			if(ctr % 2 == 0)
				out.print("<tr>");
			else
				out.print("<tr class='bg'>");
			%>
				<tr>
					<td><%=Vacancy.getVacancy(vacancyId).getVacancyName() %></td>
					<td><%=exp.getMinimumExperienceYear() %></td>
					<td><%=exp.getPoint() %></td>
					<td>
						<a href="#.jsp" onclick="showEditFieldsOfExperienceCriteria(<%=exp.getId()%>);"><img src="design/edit-icon.gif" align="absmiddle" border="0"/></a>
					</td>
				</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<div id="editExperienceCriteriaDiv"></div>