<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	List<EducationLevelCriteriaValueList> eduCriteriaList = EducationLevelCriteriaValueList.getAllEducationLevelCriteriaListForVacancy(vacancyId);
	Iterator<EducationLevelCriteriaValueList> eduCriteriaItr = eduCriteriaList.iterator();	
%>
<table border="0" width="100%">
	<tr>
		<th>Vacancy</th>
		<th>Education Level</th>
		<th>Point</th>
		<th>Edit</th>
	</tr>
	<%
		int ctr = 1;
		while(eduCriteriaItr.hasNext()){
			EducationLevelCriteriaValueList e = eduCriteriaItr.next();
			if(ctr % 2 == 0)
				out.print("<tr>");
			else
				out.print("<tr class='bg'>");
			%>
				<tr>
					<td><%=Vacancy.getVacancy(vacancyId).getVacancyName() %></td>
					<td><%=EducationLevel.getEducationLevel(e.getEducationLevelId()).getEducationLevel() %></td>
					<td><%=e.getPoint() %></td>
					<td>
						<a href="#.jsp" onclick="showEditFieldsOfEducationLevelCriteria(<%=e.getId()%>);"><img src="design/edit-icon.gif" align="absmiddle" border="0"/></a>
					</td>
				</tr>
			<%
			ctr++;
		}//end while loop
	%>
</table>
<div id="editEducationLevelCriteriaDiv"></div>