<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<table border="0" width="100%">
	<tr>
		<td>Vacancy:</td>
		<td><select name="slctvacancy" id="slctvacancy"
			style="width: 60%"
			onchange="showSelectedEducationLevelCriteriaInnerMenuForVacancy(this.value);">
				<option value="" selected="selected">--Select Vacancy--</option>
				<%
					List<Vacancy> vacancyList = Vacancy.getAllVacanciesWithStatus("unset");
					Iterator<Vacancy> vacancyItr = vacancyList.iterator();
					while (vacancyItr.hasNext()) {
						Vacancy v = vacancyItr.next();
				%>
				<option value="<%=v.getId()%>"><%=v.getVacancyName()%>:
					Posted on:
					<%=v.getDatePosted()%></option>
				<%
					}//end while loop
				%>
		</select></td>
	</tr>
</table>
<div id="educationLevelCriteriaDiv"></div>